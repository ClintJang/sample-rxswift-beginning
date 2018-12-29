//
//  IntervalRangeViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 21/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

final class DeferredViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("===============================")
        
        let deferred = Observable<String>.deferred {
            
            // just("defer")의 실행을 늦춰보자!!
            Observable<String>.just("defer").debug()
        }
        
        // 딜레이 시키고 싶은 시간을 정하자
        let delayTime = 3.0
        print("== \(delayTime) 초 뒤에 subscribe 를 실행 할 것이고")
        print("== 그때!! Observable<String>.just(..).debug() 가 실행 될 것입니다.")
        print("\n\n")

        
        // 3초 뒤에 "Observable<String>.just("defer").debug()" 실행
        DispatchQueue.main.asyncAfter(deadline: .now() + delayTime) { [weak self] in
            if let strongSelf = self {
                deferred.subscribe(onNext:{ print($0) })
                    .disposed(by: strongSelf.disposeBag)
            }
        }
        
        print("===============================")
        print("\n\n")
    }
}
