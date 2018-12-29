//
//  TimerViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 21/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

final class TimerViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("===============================")
        print("첫번째 Timer 실행")
        print("서브스크라이브 되서, 2초 후 부터 실행")
        print("\n\n")
        
        let intervalFirst = 2 // 2초에 한번씩
        
        Observable<Int>.timer(RxTimeInterval(intervalFirst), scheduler: MainScheduler.instance)
            //            .debug()
            .subscribe({ print("첫번째:\($0)") })
            .disposed(by: disposeBag)
        
        print("===============================")
        print("두번째 Timer 실행")
        print("서브스크라이브 되서, 3초 후 에 실행")
        print("\n\n")
        
        let intervalSecond = 3 // 3초에 한번씩
        
        Observable<Int>.timer(RxTimeInterval(intervalSecond), scheduler: MainScheduler.instance)
            .map({ $0 + 1000 }) // 1000, 1001, 1002...
            .subscribe({ print("두번째:\($0)") })
            .disposed(by: disposeBag)
        
        print("===============================")
        print("\n\n")
    }
}
