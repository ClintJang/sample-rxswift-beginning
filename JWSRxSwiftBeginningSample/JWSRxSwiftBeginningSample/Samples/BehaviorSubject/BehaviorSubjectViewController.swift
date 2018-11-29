//
//  BehaviorSubjectViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 29/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

class BehaviorSubjectViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let subject = BehaviorSubject(value: "Before Message")
        subject.subscribe(onNext: { print("string frist: \($0)") },
                          onError: { print("string frist: \($0)") },
                          onCompleted: { print("string frist: onCompleted") }, onDisposed: { print("string frist: onDisposed")})
            .disposed(by: disposeBag)
        
        subject.onNext("A")
        subject.onNext("B")
        subject.onNext("C")
        subject.onNext("D(Last)")
        
        subject.subscribe(onNext: { print("string second: \($0)") },
                          onError: { print("string second: \($0)") },
                          onCompleted: { print("string second: onCompleted") }, onDisposed: { print("string second: onDisposed")})
            .disposed(by: disposeBag)
        
        subject.onNext("E")
        subject.onNext("F")
        subject.onNext("G")
        
    }
}
