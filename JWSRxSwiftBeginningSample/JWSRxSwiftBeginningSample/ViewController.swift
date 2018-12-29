//
//  ViewController.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 08/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

enum MainCellItem: String, CaseIterable {
    
    case start = "구독자에게 알리는 방법의 이해"
    case create = "생성, create()"
    case just = "생성, just()"
    case from = "생성, from()"
    case of = "of()"
    case range = "생성, range()"
    case scan = "변환, scan(), reduce()"
    case flatMap = "변환, flatMap()"
    case filter = "filter()"
    case zip = "결합, zip()"
    case gugudan = "구구단을 공부해 볼까요?"
    case interval = "생성, interval()"
    case timer = "생성, timer()"
    case deferred = "생성, deferred()"
    case concatMap = "변환, concatMap()"
    case publicSubject = "PublishSubject"
    case replaySubject = "ReplaySubject"
    case behaviorSubject = "BehaviorSubject"
    case variable = "Variable [DEPRECATED]"
    case behaviorRelay = "BehaviorRelay"
    case publishRelay = "PublishRelay"
    case concat = "결합, Concat"
    case throttle = "Throttle()"
    case driver = "Driver()"
    case etc = "계속 추가 중 입니다."
    
    var storyName: String? {
        switch self {
        case .start:
            return "Start"
        case .create:
            return "Create"
        case .just:
            return "Just"
        case .from:
            return "From"
        case .of:
            return "Of"
        case .range:
            return "Range"
        case .scan:
            return "Scan"
        case .flatMap:
            return "FlatMap"
        case .filter:
            return "Filter"
        case .zip:
            return "Zip"
        case .gugudan:
            return "Gugudan"
        case .interval:
            return "Interval"
        case .timer:
            return "Timer"
        case .concatMap:
            return "ConcatMap"
        case .deferred:
            return "Deferred"
        case .publicSubject:
            return "PublishSubject"
        case .replaySubject:
            return "ReplaySubject"
        case .behaviorSubject:
            return "BehaviorSubject"
        case .variable:
            return "Variable"
        case .behaviorRelay:
            return "BehaviorRelay"
        case .publishRelay:
            return "PublishRelay"
        case .concat:
            return "Concat"
        case .throttle:
            return "Throttle"
        default:
            return nil
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
                let rowAddSpaceString = (row < 9 ? " " : "") + "\(row+1)"
                
                cell.textLabel?.text = "\(rowAddSpaceString). \(element)"
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

extension ViewController {
    // 이동처리
    func move(_ storyName:String) {
        let storyboard = UIStoryboard.init(name: storyName, bundle: nil)
        let nextViewController = storyboard.instantiateViewController(withIdentifier: "\(storyName)ViewController")
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("indexPath:\(indexPath)")
        
        if let story = MainCellItem.allCases[indexPath.row].storyName {
            move(story)
        } else {
            UIViewController.showAlert("준비 중 입니다.")
        }
    }
}
