//
//  PublishRelayViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 30/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

final class PublishRelayViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("===============================")
        print("\n\n")
        
        // frist subscribe
        let subject = PublishRelay<String>()
        subject.subscribe(onNext: { print("string frist: \($0)") },
                                onError: { print("string frist: \($0)") },
                                onCompleted: { print("string frist: onCompleted") }, onDisposed: { print("string frist: onDisposed")})
            .disposed(by: disposeBag)
        subject.accept("1")
        subject.accept("2")
        subject.accept("안녕하세요.")
        
        // second subscribe
        subject.subscribe(onNext: { print("string second: \($0)") },
                                onError: { print("string second: \($0)") },
                                onCompleted: { print("string second: onCompleted") }, onDisposed: { print("string second: onDisposed")})
            .disposed(by: disposeBag)
        
        subject.accept("3")
        subject.accept("4")
        subject.accept("반갑습니다.")
        
        // subjectString 은 뒤로가기 하면 string: onDisposed 가 호출 될 것 입니다.
        
        print("===============================")
        print("\n\n")
        
        let subjectInt = PublishRelay<Int>()
        subjectInt.subscribe(onNext: { print("Int: \($0)") },
                             onError: { print("Int: \($0)") },
                             onCompleted: { print("Int: onCompleted") }, onDisposed: { print("Int: onDisposed")})
            .disposed(by: disposeBag)
        
        
        subjectInt.accept(1)
        subjectInt.accept(2)
        subjectInt.accept(3)
        subjectInt.accept(10)
        subjectInt.accept(1000000)
        
        // PublishSubject 와 달리 PublishRelay는 onCompleted가 없죠.
        
        print("===============================")
        print("\n\n")
    }
}
