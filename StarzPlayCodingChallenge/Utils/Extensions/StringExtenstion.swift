//
//  StringExtenstion.swift
//  StarzPlayCodingChallenge
//
//  Created by Ahmad on 30/03/2024.
//

import Foundation
import UIKit
/* added to get the formatted year for subTitle at DetailView controller*/
extension String {
    func Date(withFormat format: String) -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format

        if let date = dateFormatter.date(from: self) {
            let calendar = Calendar.current
            let year = calendar.component(.year, from: date)
            return String(year)
        } else {
            return ""
        }
    }
}
