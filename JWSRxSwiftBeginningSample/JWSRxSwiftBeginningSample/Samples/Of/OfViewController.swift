//
//  OfViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 15/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

class OfViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        Observable.of("1", "2", "3", "4")
            .subscribe(onNext: { print("onNext::\($0)") },
                       onError: { print($0)},
                       onCompleted: { print("onCompleted") })
            .disposed(by: disposeBag)
        
        Observable.of(1, 2, 3, 4)
            .subscribe(onNext: { print("onNext::\($0)") },
                       onError: { print($0)},
                       onCompleted: { print("onCompleted") })
            .disposed(by: disposeBag)
        
    }

}
