//
//  RangeViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 15/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

final class RangeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("===============================")
        print("\n\n")
        
        Observable.range(start: 1, count: 4)
            .subscribe(onNext: { print("onNext::\($0)") },
                       onError: { print($0)},
                       onCompleted: { print("onCompleted") })
            .disposed(by: disposeBag)
    }
}
