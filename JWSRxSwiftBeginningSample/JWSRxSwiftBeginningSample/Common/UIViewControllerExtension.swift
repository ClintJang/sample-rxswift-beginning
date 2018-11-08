//
//  UIViewControllerExtension.swift
//  JWSRxSwiftBeginningSample
//
//  Created by Clint on 08/11/2018.
//  Copyright © 2018 clintjang. All rights reserved.
//

import UIKit

extension UIViewController {
    private static func rootViewController() -> UIViewController {
        return UIApplication.shared.keyWindow!.rootViewController!
    }
    
    static func showAlert(_ message: String) {
        let alertView = UIAlertController(title: "RxSwift Beginning!", message: message, preferredStyle: .alert)
        alertView.addAction(UIAlertAction(title: "OK", style: .cancel) { _ in
        })
        rootViewController().present(alertView, animated: true, completion: nil)
    }
}
