//
//  FlatMapViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 12/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

final class FlatMapViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("===============================")
        print("\n\n")
        
        let _ = Observable.from([1,2,3,4])
            .flatMap { Observable.just($0) }
            .subscribe(onNext:{print($0)})
            .disposed(by: disposeBag)
        
    }
}
