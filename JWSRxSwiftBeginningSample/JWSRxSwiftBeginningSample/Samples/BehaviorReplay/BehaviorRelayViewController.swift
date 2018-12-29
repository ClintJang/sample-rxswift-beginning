//
//  BehaviorRelayViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 30/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

final class BehaviorRelayViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("===============================")
        print("\n\n")
        
        let subject = BehaviorRelay(value: "Default String")
        
        // value : get-only-property
        print("value print : \(subject.value)")
        
        subject.accept("A") // 안나옴
        subject.accept("B")
        
        subject.asObservable()
            .subscribe(onNext: { text in
                print(text)
            }).disposed(by: disposeBag)
        subject.accept("C")
        subject.accept("D (Last)")

        subject.asObservable()
            .subscribe(onNext: { text in
                print(text)
            }).disposed(by: disposeBag)
        
        subject.accept("E")
        subject.accept("F")
        subject.accept("G")
        
        print("===============================")
        print("\n\n")
    }
}
