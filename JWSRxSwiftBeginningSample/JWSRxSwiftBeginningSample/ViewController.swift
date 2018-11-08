//
//  ViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 08/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

enum MainCellItem: String, CaseIterable {
    case row1 = "구독자에게 알리는 방법의 이해"
    case row2 = "셈플 소스 두번째 아직 입니다."
    case row3 = "아직 입니다."

    init?(id : Int) {
        switch id {
        case 1: self = .row1
        case 2: self = .row2
        case 3: self = .row3
        default: return nil
        }
    }
}

class ViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 테이블 뷰에 넣을 데이터
        let items = Observable.just(
            MainCellItem.allCases.map({ $0.rawValue })
        )
        
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
            })
            .disposed(by: disposeBag)
        
        // 델리게이트 연결
        tableView.rx.setDelegate(self)
            .disposed(by: disposeBag)
    }
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("indexPath:\(indexPath)")
        
        if indexPath.row == 0 {
            // 구독자에게 알리는 방법의 이해
            let storyboard = UIStoryboard.init(name: "Start", bundle: nil)
            let nextViewController = storyboard.instantiateViewController(withIdentifier: "StartViewController")
            self.navigationController?.pushViewController(nextViewController, animated: true)
        } else {
            UIViewController.showAlert("준비 중 입니다.")
        }
    }
}
