//
//  JustViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 09/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

//http://reactivex.io/documentation/operators/just.html

struct Singer {
    var score: Variable<Int>
}

final class JustViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("===============================")
        print("\n\n")
        
        Observable.just(1)
            .subscribe(onNext:{ print($0) },
                       onError: { print($0) },
                       onCompleted: {print("onCompleted")})
            .disposed(by:disposeBag)
        
        print("===============================")
        print("\n\n")
        
        Observable.just("안녕하세요.")
            .subscribe(onNext:{ print($0) },
                       onError:{ print($0) },
                       onCompleted:{ print("onCompleted")})
            .disposed(by: disposeBag)
        
        print("===============================")
        print("\n\n")
        
        Observable.just([1,2,3,4])
            .subscribe(onNext:{ print($0) },
                       onError:{ print($0) },
                       onCompleted:{ print("onCompleted")})
            .disposed(by: disposeBag)

        print("===============================")
        print("\n\n")
        
        let service :Observable<Int> = Observable.just(99)
        service.subscribe(onNext:{ print($0) },
                          onError:{ print($0) },
                          onCompleted:{ print("onCompleted")})
            .disposed(by: disposeBag)
        
        
    }

}
