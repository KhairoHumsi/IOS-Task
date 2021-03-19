//
//  StringExtensions.swift
//  Task
//
//  Created by mohammad khair pk on 18/03/2021.
//

import Foundation


extension String {
    func localized() -> String {
        return NSLocalizedString(self, comment: "")
    }
}
