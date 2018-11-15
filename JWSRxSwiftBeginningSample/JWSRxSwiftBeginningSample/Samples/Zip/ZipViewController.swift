//
//  ZipViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 15/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

class ZipViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("===============================")
        print("\n\n")
        
        let alphabetFromAToE = Observable.from(["a", "b", "c", "d", "e"])
        let numberFrom1To5 = Observable.from(["1", "2", "3", "4", "5"])
        Observable.zip(alphabetFromAToE, numberFrom1To5)
            .subscribe(onNext:{ print($0) },
                       onError:{ print($0) },
                       onCompleted:{ print("onCompleted") })
        .disposed(by: disposeBag)
        
        print("===============================")
        print("\n\n")
        
        let numberFrom1To3 = Observable.from(["1", "2", "3"])
        Observable.zip(alphabetFromAToE, numberFrom1To3)
            .subscribe(onNext:{ print($0) },
                       onError:{ print($0) },
                       onCompleted:{ print("onCompleted") })
            .disposed(by: disposeBag)
    }
}
