//
//  GugudanViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 16/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

class GugudanViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 1단
        Observable.just(1)
            .flatMap { dan in
                Observable.range(start: 1, count: 9).map({ row in
                return "\(dan) * \(row) = \(dan * row)"
                }) }
            .subscribe(onNext:{ print($0)},
                       onError:{ print($0) },
                       onCompleted:{ print("onCompleted")}
            )
            .disposed(by: disposeBag)
    }
}
