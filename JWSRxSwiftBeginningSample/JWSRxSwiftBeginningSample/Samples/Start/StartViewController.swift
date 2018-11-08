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
        
        let source: Observable<String>  = Observable.just("발행할 데이터")
        source.subscribe { (event: Event<String>) in
                print(event)
            }
            .disposed(by: disposeBag)
    }
}
