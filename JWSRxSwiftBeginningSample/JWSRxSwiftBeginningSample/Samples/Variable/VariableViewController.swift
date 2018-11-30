//
//  VariableViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 30/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

/// Variable is..
/// **This concept will be deprecated from RxSwift but offical migration path hasn't been decided yet.**
/// https://github.com/ReactiveX/RxSwift/issues/1501

class VariableViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        /*
         [DEPRECATED] `Variable` is planned for future deprecation. Please consider `BehaviorRelay` as a replacement. Read more at: https://git.io/vNqvx
         */
        
        // 아래 주석 풀고 테스트 해보세요.
        // Deprecated되서 그냥 소스는 주석 처리 해두었습니다.
        
//        let variableString = Variable("Default String")
//
//        print(variableString.value)
//
//        variableString.value = "A" // 안나옴.
//        variableString.value = "B"
//
//        variableString.asObservable()
//            .subscribe(onNext: { text in
//                print(text)
//            }).disposed(by: disposeBag)
//        variableString.value = "C"
//        variableString.value = "D (Last)"
//
//        variableString.asObservable()
//            .subscribe(onNext: { text in
//                print(text)
//            }).disposed(by: disposeBag)
//
//        variableString.value = "E"
//        variableString.value = "F"
//        variableString.value = "G"
    }
}
