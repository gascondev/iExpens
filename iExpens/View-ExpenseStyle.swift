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
            return self.foregroundStyle(.yellow)
        } else if item.amount < 100 {
            return self.foregroundStyle(.orange)
        } else {
            return self.foregroundStyle(.red)
        }
    }
}
