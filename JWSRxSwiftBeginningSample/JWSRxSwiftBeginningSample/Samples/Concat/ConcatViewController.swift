//
//  ConcatViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 30/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

final class ConcatViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("===============================")

        let firstSequence: Observable<Int> = Observable.range(start: 1, count: 5)
        let secondSequence: Observable<Int> = Observable.from([6,7,8,9,10])
        let thirdSequence: Observable<Int> = Observable.of(11, 12, 13, 14, 15)
        
        let _ = Observable.concat(firstSequence, secondSequence, thirdSequence)
            .subscribe(
                onNext: { print($0) },
                onError: { print($0) },
                onCompleted: { print("onCompleted") }) { print("onDisposed") }
            .disposed(by: disposeBag)
    }
}
