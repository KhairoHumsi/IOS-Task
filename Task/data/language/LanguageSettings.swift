//
//  LanguageSettings.swift
//  Task
//
//  Created by mohammad khair pk on 19/03/2021.
//

import SwiftUI

class LanguageSettings: ObservableObject {

    @Published var lang: String = Locale.current.languageCode ?? "en"

    var bundle: Bundle? {
        let b = Bundle.main.path(forResource: lang, ofType: "lproj")!
        return Bundle(path: b)
    }
    
    func isEnglish() -> Bool {
        if lang == "en" {
            return true
        } else {
            return false
        }
    }
}
