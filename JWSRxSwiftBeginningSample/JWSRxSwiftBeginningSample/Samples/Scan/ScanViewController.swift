//
//  ScanViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 09/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

final class ScanViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("===============================")
        print("\n\n")
        
        // Scan
        let numbers = ["1", "3", "5"]
        let sourceScan = Observable.from(numbers)
        sourceScan.scan("b") { (num1, num2) -> String in
            print("\nscan")
            print("ball1:\(num1)")
            print("ball2:\(num2)")
            return "\(num1),\(num2)"
            }.subscribe(onNext:{ print("\nonNext"); print($0)},
                        onError:{ print($0) },
                        onCompleted:{ print("onCompleted")})
            .disposed(by: disposeBag)
        
        print("===============================")
        print("\n\n")
        
        // Reduce
        let sourceReduce = Observable.from(numbers)
        sourceReduce.reduce("b") { (num1, num2) -> String in
            print("\nreduce")
            print("num1:\(num1)")
            print("num2:\(num2)")
            return "\(num1),\(num2)"
            }.subscribe(onNext:{ print("\nonNext"); print($0)},
                        onError:{ print($0) },
                        onCompleted:{ print("onCompleted")})
            .disposed(by: disposeBag)


    }
    
}
