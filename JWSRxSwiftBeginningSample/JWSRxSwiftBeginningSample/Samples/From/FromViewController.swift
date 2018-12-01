//
//  FromViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 01/12/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

class FromViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("===============================")
        print("\n\n")
        
        Observable.from([1,2,3])
            .subscribe(onNext:{ print($0) },
                       onError: { print($0) },
                       onCompleted: {print("onCompleted")})
            .disposed(by:disposeBag)
        
        print("===============================")
        print("\n\n")
        
        Observable.from(["기억","니은","디긋", "ㅎㅎㅎ"])
            .subscribe(onNext:{ print($0) },
                       onError: { print($0) },
                       onCompleted: {print("onCompleted")})
            .disposed(by:disposeBag)
        
        print("===============================")
        print("\n\n")
    }
}
