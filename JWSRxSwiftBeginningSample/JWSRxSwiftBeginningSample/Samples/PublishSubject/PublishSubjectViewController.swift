//
//  PublishSubjectViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 28/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

final class PublishSubjectViewController: BaseViewController {

    let subjectString = PublishSubject<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("===============================")
        print("\n\n")
        
        // frist subscribe
        subjectString.subscribe(onNext: { print("string frist: \($0)") },
                                onError: { print("string frist: \($0)") },
                                onCompleted: { print("string frist: onCompleted") }, onDisposed: { print("string frist: onDisposed")})
            .disposed(by: disposeBag)
        
        subjectString.onNext("1")
        subjectString.onNext("2")
        subjectString.onNext("안녕하세요.")
        
        // second subscribe
        subjectString.subscribe(onNext: { print("string second: \($0)") },
                                onError: { print("string second: \($0)") },
                                onCompleted: { print("string second: onCompleted") }, onDisposed: { print("string second: onDisposed")})
            .disposed(by: disposeBag)
        
        subjectString.onNext("3")
        subjectString.onNext("4")
        subjectString.onNext("반갑습니다.")
        // subjectString 은 뒤로가기 하면 string: onDisposed 가 호출 될 것 입니다.
        
        print("===============================")
        print("\n\n")
        
        let subjectInt = PublishSubject<Int>()
        subjectInt.subscribe(onNext: { print("Int: \($0)") },
                             onError: { print("Int: \($0)") },
                             onCompleted: { print("Int: onCompleted") }, onDisposed: { print("Int: onDisposed")})
            .disposed(by: disposeBag)
        
        
        subjectInt.onNext(1)
        subjectInt.onNext(2)
        subjectInt.onNext(3)
        subjectInt.onNext(10)
        subjectInt.onNext(1000000)
        subjectInt.onCompleted()
        
        print("===============================")
        print("\n\n")
    }
}
