//
//  WordListApp.swift
//  WordList
//
//  Created by ほしょ on 2025/06/26.
//

import SwiftUI
import SwiftData

@main
struct WordListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Word.self)
        }
    }
}
