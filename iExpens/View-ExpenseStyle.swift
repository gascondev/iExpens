//
//  View-ExpenseStyle.swift
//  iExpens
//
//  Created by Álvaro Gascón on 17/5/24.
//

import Foundation
import SwiftUI

extension View {
    func style(for item: ExpenseItem) -> some View {
        if item.amount < 10 {
            return AnyView(self.foregroundStyle(.green).font(.title3))
        } else if item.amount < 100 {
            return AnyView(self.foregroundStyle(.orange).font(.title2))
        } else {
            return AnyView(self.foregroundStyle(.red).font(.title))
        }
    }
}
