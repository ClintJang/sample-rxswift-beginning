//
//  ThrottleViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 07/12/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

class ThrottleViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // For Test
        let dueTime = 0.1

        print("none throttle ===============================")

        Observable.range(start: 0, count: 10)
            .subscribe(onNext:{ print("none, \(Date()),\($0)") },
                       onCompleted: { print("none, onCompleted") })
            .disposed(by: disposeBag)

        print("1st ===============================")

        Observable.range(start: 0, count: 10)
            .throttle(dueTime, scheduler: MainScheduler.instance)
            .subscribe(onNext:{ print("1st, \(Date()),\($0)") },
                       onCompleted: { print("1st, onCompleted") })
            .disposed(by: disposeBag)
        
        print("2nd ===============================")
        
        Observable.range(start: 0, count: 100)
            .throttle(dueTime, scheduler: MainScheduler.instance)
            .subscribe(onNext:{ print("2st, \(Date()),\($0)") },
                       onCompleted: { print("2st, onCompleted") })
            .disposed(by: disposeBag)
        
        print("3th ===============================")

        Observable.range(start: 0, count: 1000)
            .throttle(dueTime, scheduler: MainScheduler.instance)
            .subscribe(onNext:{ print("3th, \(Date()),\($0)") },
                       onCompleted: { print("3th, onCompleted") })
            .disposed(by: disposeBag)
        
        print("4th ===============================")
        
        Observable.range(start: 0, count: 10000)
            .throttle(dueTime, scheduler: MainScheduler.instance)
            .subscribe(onNext:{ print("4th, \(Date()),\($0)") },
                       onCompleted: { print("4th, onCompleted") })
            .disposed(by: disposeBag)
        
        print("5th ===============================")
        
        Observable.range(start: 0, count: 100000)
            .throttle(dueTime, scheduler: MainScheduler.instance)
            .subscribe(onNext:{ print("5th, \(Date()),\($0)") },
                       onCompleted: { print("5th, onCompleted") })
            .disposed(by: disposeBag)
    }
}
