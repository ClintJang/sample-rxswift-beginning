//
//  CreateViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 09/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

enum TestError : Error {
    case createError
}

// http://reactivex.io/documentation/operators/create.html

final class CreateViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("===============================")
        
        let _ = Observable<Int>.create { (observer) -> Disposable in
            
            observer.onNext(1)
            observer.onNext(2)
            observer.onCompleted()
            
            return Disposables.create()
            }.subscribe(onNext: { print($0) },
                        onError: { print("Error:\($0)") },
                        onCompleted:{ print("onCompleted") } )
        .disposed(by: disposeBag)
        
        print("===============================")
        
        let _ = Observable<Int>.create { (observer) -> Disposable in
            
            observer.onNext(1)
            observer.onNext(2)
            observer.onNext(3)

            do {
                // 강제 에러 발생
//                try self.someThrowingFunction()
                throw TestError.createError
                
            } catch {
                 observer.onError(error)
            }
            
            // onNext(4)와 onCompleted는 실행되지 않음
            observer.onNext(4)
            observer.onCompleted()
            
            return Disposables.create()
            }.subscribe(onNext: { print($0) },
                        onError: { print("Error:\($0)") },
                        onCompleted:{ print("onCompleted") } )
            .disposed(by: disposeBag)
        
        print("===============================")
        
        let _ = Observable<Int>.create { (observer) -> Disposable in
            
            [1,2,3,4,5].forEach({
                observer.onNext($0)
            })
            observer.onCompleted()
            
            return Disposables.create()
            }.subscribe(onNext: { print($0) },
                        onError: { print("Error:\($0)") },
                        onCompleted:{ print("onCompleted") } )
        .disposed(by: disposeBag)

        print("===============================")
        
        let _ = Observable<String>.create { (observer) -> Disposable in
            
            observer.onNext("1")
            observer.onNext("2")
            observer.onCompleted()
            
            return Disposables.create()
            }.subscribe(onNext: { print($0) },
                        onError: { print("Error:\($0)") },
                        onCompleted:{ print("onCompleted") } )
        .disposed(by: disposeBag)
    }

    // 불필요
//    func someThrowingFunction() throws -> Int {
//        // 강제 에러 발생
//        throw TestError.createError
//
////        return 0
//    }
}
