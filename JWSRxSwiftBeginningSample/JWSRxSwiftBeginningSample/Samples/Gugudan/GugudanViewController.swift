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
                
        runButton.rx.tap
            .bind(onNext:calculateGugudan)
            .disposed(by: disposeBag)
        
        
        // 앱 시작시 콘솔 1단 테스트, 만들기 전에 사전 테스트용도
        consoleFrom1To9Dan()
    }
        
        
    func calculateGugudan() {
        if let danString = inputTextField.text, let danValue = Int(danString) {
            Observable.just(danValue)
                .flatMap { dan in
                    Observable.range(start: 1, count: 9).map({ row in
                        return "\(dan) * \(row) = \(dan * row)\n"
                    }).reduce("\(dan)단 출력\n", accumulator: { "\($0)\($1)" })
                    
                }
                .debug() // 콜솔 결과 보기
                .bind(to: resultTextView.rx.text)
                .disposed(by: disposeBag)
        }
    }
}

extension GugudanViewController {
    func consoleFrom1To9Dan() {
        print("===============================")
        print("== 콘솔 로그용")
        print("\n\n")
        
        // 1단
//        Observable.just(1)
//            .flatMap { dan in
//                Observable.range(start: 1, count: 9).map({ row in
//                    return "\(dan) * \(row) = \(dan * row)"
//                }) }
//            .subscribe(onNext:{ print($0)},
//                       onError:{ print($0) },
//                       onCompleted:{ print("onCompleted")}
//            )
//            .disposed(by: disposeBag)
        
        // 1부터 9단 찍기
        Observable.range(start: 1, count: 9)
            .flatMap { dan in
                Observable.range(start: 1, count: 9).map({ row in
                    return "\(dan) * \(row) = \(dan * row)\n"
                }).reduce("\(dan)단 출력\n", accumulator: { "\($0)\($1)" })
            }
            .subscribe(onNext:{ print($0)},
                       onError:{ print($0) },
                       onCompleted:{ print("onCompleted")}
            )
            .disposed(by: disposeBag)
    }
}
