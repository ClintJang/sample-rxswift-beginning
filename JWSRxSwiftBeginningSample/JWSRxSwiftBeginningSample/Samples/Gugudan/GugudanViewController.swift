//
//  GugudanViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 16/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

class GugudanViewController: BaseViewController {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var runButton: UIButton!
    @IBOutlet weak var resultTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let inputValueValid = inputTextField.rx.text.orEmpty
            .map { $0.count < 1 }
            .share(replay: 1)
            
        inputValueValid
            .bind(to: runButton.rx.isHidden)
            .disposed(by: disposeBag)
        
        inputValueValid
            .bind(to: runButton.rx.isHidden)
            .disposed(by: disposeBag)
                
        runButton.rx.tap
            .bind(onNext:calculateGugudan)
            .disposed(by: disposeBag)
        
        
        // 콘솔 1단 테스트
        console1Dan()
    }
        
        
    func calculateGugudan() {
        if let danString = inputTextField.text, let danValue = Int(danString) {
            Observable.just(danValue)
                .flatMap { dan in
                    Observable.range(start: 1, count: 9).map({ row in
                        return "\(dan) * \(row) = \(dan * row)"
                    }) }
                .subscribe(onNext:{ print($0)},
                           onError:{ print($0) },
                           onCompleted:{ print("onCompleted")}
                )
                .disposed(by: disposeBag)
        }

    }
}

extension GugudanViewController {
    func console1Dan() {
        print("===============================")
        print("== 콘솔 로그용")
        print("\n\n")
        
        // 1단
        Observable.just(1)
            .flatMap { dan in
                Observable.range(start: 1, count: 9).map({ row in
                    return "\(dan) * \(row) = \(dan * row)"
                }) }
            .subscribe(onNext:{ print($0)},
                       onError:{ print($0) },
                       onCompleted:{ print("onCompleted")}
            )
            .disposed(by: disposeBag)
    }
}
