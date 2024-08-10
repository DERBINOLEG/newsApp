//
//  String+Ex.swift
//  News
//
//  Created by Олег Дербин on 07.08.2024.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
