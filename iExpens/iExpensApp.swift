//
//  iExpensApp.swift
//  iExpens
//
//  Created by Álvaro Gascón on 16/5/24.
//

import SwiftUI
import SwiftData

@main
struct iExpensApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: ExpenseItem.self)
    }
}
