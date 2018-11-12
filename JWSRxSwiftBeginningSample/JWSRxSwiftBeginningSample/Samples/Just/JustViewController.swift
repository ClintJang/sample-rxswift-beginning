//
//  JustViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 09/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

//http://reactivex.io/documentation/operators/just.html

class JustViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        Observable.just(1)
            .subscribe(onNext:{ print($0) },
                       onError: { print($0) },
                       onCompleted: {print("onCompleted")})
            .disposed(by:disposeBag)
        
        Observable.just("안녕하세요.")
            .subscribe(onNext:{ print($0) },
                       onError:{ print($0) },
                       onCompleted:{ print("onCompleted")})
            .disposed(by: disposeBag)
    }

}
