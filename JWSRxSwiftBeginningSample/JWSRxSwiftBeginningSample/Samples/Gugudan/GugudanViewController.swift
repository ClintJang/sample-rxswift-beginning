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
        
        
        // 앱 시작시 콘솔 구구단 전부 찍기, 케이스 1
        consoleFrom1To9DanCase1()
        
        // 앱 시작시 콘솔 구구단 전부 찍기, 케이스 2
//        consoleFrom1To9DanCase2()
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
    func consoleFrom1To9DanCase1() {
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
        
        // 1부터 9단 찍기, flatMap 활용
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
    
    func consoleFrom1To9DanCase2() {
        print("===============================")
        print("== 콘솔 로그용")
        print("\n\n")
        
        // 1부터 9단 찍기, concatMap 활용
        Observable.range(start: 1, count: 9)
            .concatMap { dan in
                Observable.range(start: 1, count: 9).map({ row in
                    return "\(dan) * \(row) = \(dan * row)\n"
                })
            }
            .subscribe(onNext:{ print($0)},
                       onError:{ print($0) },
                       onCompleted:{ print("onCompleted")}
            )
            .disposed(by: disposeBag)
    }
}
