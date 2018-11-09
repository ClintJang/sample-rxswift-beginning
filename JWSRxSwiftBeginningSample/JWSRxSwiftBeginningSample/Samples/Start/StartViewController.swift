//
//  StartViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 08/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

final class StartViewController : BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("# \(#function)")
        print("> next() 와 completed가 subscribe 이후 구독자에게 전달 되는 것을 확인 할 수 있음..")
        print("\n\n\n")
        
        let sourceStringA: Observable<String>  = Observable.just("발행할 데이터")
        sourceStringA.subscribe { (event: Event<String>) in
            print("## sourceStringA::subscribe 로그")
            print(event)
            }
            .disposed(by: disposeBag)
        
        let sourceIntA: Observable<Int>  = Observable.just(1)
        sourceIntA.subscribe { (event: Event<Int>) in
            print("## sourceIntA::subscribe 로그")
            print(event)
            }
            .disposed(by: disposeBag)
        
        let sourceArrayA: Observable<[Int]> = Observable.from(optional: [1,2,3,4])
        sourceArrayA.subscribe { (event: Event<[Int]>) in
            print("## sourceArrayA::subscribe 로그")
            print(event)
            }
            .disposed(by: disposeBag)
        
        
        print("===============================")
        print("\n\n")
        
        // sourceStringA 와 sourceStringB는 같은 소스
        print("## sourceArrayB::로그")
        let sourceStringB: Observable<String>  = Observable.just("발행할 데이터")
        sourceStringB.subscribe( onNext: { print($0) },
                                 onCompleted:{ print("completed") } )
            .disposed(by: disposeBag)
        
        // sourceIntA 와 sourceIntB는 같은 소스
        print("## sourceIntB::로그")
        let sourceIntB: Observable<Int>  = Observable.just(1)
        sourceIntB.subscribe( onNext: { print($0) },
                              onCompleted:{ print("completed") } )
            .disposed(by: disposeBag)
        
        // sourceArrayA 와 sourceArrayB는 같은 소스
        print("## sourceArrayC::로그")
        let sourceArrayB: Observable<[Int]> = Observable.from(optional: [1,2,3,4])
        sourceArrayB.subscribe ( onNext: { print($0) },
                                 onCompleted:{ print("completed") } )
            .disposed(by: disposeBag)
        
    }
}
