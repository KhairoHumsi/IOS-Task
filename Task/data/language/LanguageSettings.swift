//
//  LanguageSettings.swift
//  Task
//
//  Created by mohammad khair pk on 19/03/2021.
//

import SwiftUI

class LanguageSettings {
    
    static let shaired = LanguageSettings()
    @AppStorage("language") var lang = Locale.current.languageCode ?? "en"

    func isEnglish() -> Bool {
        if lang == "en" {
            return true
        } else {
            return false
        }
    }
    
    func chengeLanguage() {
        lang = lang == "en" ? "ar" : "en"
    }
}
