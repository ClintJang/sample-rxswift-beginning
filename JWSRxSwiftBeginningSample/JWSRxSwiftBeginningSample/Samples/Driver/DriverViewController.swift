//
//  DriverViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 19/12/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

final class DriverViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("===============================")
        print("\n\n")
        
        Observable.just(1)
            .subscribe(onNext:{ print($0) },
                       onError: { print($0) },
                       onCompleted: {print("onCompleted")})
            .disposed(by:disposeBag)
        
        print("===============================")
        print("\n\n")
        
        // 테스트중
//        let results = Observable.just(1)
//            .asDriver(onErrorJustReturn: 0)
//
//        results.map { value -> (Int) in
//            print("\(value)")
//            return value
//            }.do(onNext: { print("\($0)")
//            }, onCompleted: {
//                print("onCompleted")
//            }, onSubscribe: {
//                print("onSubscribe")
//            }, onSubscribed: {
//                print("onSubscribed")
//            }, onDispose: {print("onDispose")})
    }
}
