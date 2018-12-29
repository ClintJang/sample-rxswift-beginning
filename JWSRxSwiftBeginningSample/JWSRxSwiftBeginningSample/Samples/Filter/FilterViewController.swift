//
//  FilterViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 19/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

final class FilterViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let list : [String] = ["1. 12345", "2. abcdef", "3. ABCDEF", "4. Hello World", "5. Good bye"]
        let removeKey = "World"
        
        print("===============================")
        print("\n\n")
        
        let _ = Observable.from(list)
            .filter { $0.range(of: removeKey) == nil }
            .subscribe(onNext:{ print($0) },
                       onError: { print($0) },
                       onCompleted: { print("onCompleted") })
            .disposed(by: disposeBag)
    }

}
