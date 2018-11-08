//
//  ViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 08/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 테이블 뷰에 넣을 데이터
        let items = Observable.just([
            "구독자에게 알리는 방법의 이해",
            "셈플 소스 두번째 아직 입니다.",
            "아직 입니다."
        ])
        
        // 셀
        items
            .bind(to: tableView.rx.items(cellIdentifier: "MainCell", cellType: UITableViewCell.self)) { (row, element, cell) in
                
                cell.textLabel?.text = "\(element)"
                cell.selectionStyle = .none
            }
            .disposed(by: disposeBag)
        
        // 터치 이동 처리
        tableView.rx
            .modelSelected(String.self)
            .subscribe(onNext:  { value in
                print("\(value)")
                UIViewController.showAlert("\(value)")
            })
            .disposed(by: disposeBag)
    }
}

