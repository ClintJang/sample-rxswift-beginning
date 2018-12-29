//
//  ConcatMapViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 22/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

final class ConcatMapViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("===============================")
        print("\n\n")

        let list = [
            "영어": Observable.of("A", "B", "C", "D"),
            "숫자": Observable.of("하나", "둘", "셋"),
            "한글": Observable.of("ㄱ", "ㄴ", "ㄷ"),
        ]
        
        let observable = Observable.of("영어", "숫자", "한글")
        
        
        // flatMap 결과
        print("flatMap 결과")
        observable.flatMap { element in
            list[element] ?? .empty()
            }
            .subscribe({ print($0.element ?? "") })
            .disposed(by: disposeBag)
        
        print("\n\n")
        print("concatMap 결과")
        // concatMap 결과
        observable.concatMap({ element in
            list[element] ?? .empty()
            })
            .subscribe({ print($0.element ?? "") })
            .disposed(by: disposeBag)
        
        print("===============================")
        print("\n\n")
    }
}
