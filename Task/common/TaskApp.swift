//
//  TaskApp.swift
//  Task
//
//  Created by mohammad khair pk on 17/03/2021.
//

import SwiftUI

@main
struct TaskApp: App {
    
    @ObservedObject var sdfsdfs = LanguageSettings()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(sdfsdfs).environment(\.locale, Locale(identifier: sdfsdfs.lang)).environment(\.layoutDirection, sdfsdfs.lang == "en" ? .leftToRight : .rightToLeft)
        }
    }
}
