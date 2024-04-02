//
//  UIVeiwController.swift
//  StarzPlayCodingChallenge
//
//  Created by Ahmad on 30/03/2024
//

import Foundation
import UIKit
/* added to show the Alert on the screen so that commonly  displayed from same place */
extension UIViewController {
    // MARK: - Alert with One button and completion handler
    func showAlertSingleCompletionOneBtn(title: String!, message: String!, buttonTilte: String!, successCallback: @escaping VoidHandler) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: buttonTilte, style: UIAlertAction.Style.default, handler: { (_) in
            successCallback()
        }))
        self.present(alert, animated: true, completion: nil)
    }

}
