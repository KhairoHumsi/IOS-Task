//
//  TaskApp.swift
//  Task
//
//  Created by mohammad khair pk on 17/03/2021.
//

import SwiftUI

@main
struct TaskApp: App {
    
    @AppStorage("language") var lang = Locale.current.languageCode ?? "en"

    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.locale, Locale(identifier: lang)).environment(\.layoutDirection, lang == "en" ? .leftToRight : .rightToLeft)
        }
    }
}
