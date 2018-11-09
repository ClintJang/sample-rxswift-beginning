//
//  CreateViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 09/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let _ = Observable<Int>.create { (observer) -> Disposable in
            
            observer.onNext(1)
            observer.onNext(2)
            
            return Disposables.create()
        }
        
        let _ = Observable<String>.create { (observer) -> Disposable in
            
            observer.onNext("1")
            observer.onNext("2")
            
            return Disposables.create()
        }
        
    }
}
