//
//  ContentView.swift
//  iExpens
//
//  Created by Álvaro Gascón on 16/5/24.
//

import SwiftUI


struct ContentView: View {
    
    @State private var expenses = Expenses()
    @State private var showingAddExpense = false
    
    
    var body: some View {
        
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            NavigationStack {
                List {
                    ExpenseSection(title: "Business", expenses: expenses.businessItems, deleteItems: removeBusinessItems)
                    ExpenseSection(title: "Personal", expenses: expenses.personalItems, deleteItems: removePersonalItems)
                }
                .navigationTitle("💸 iExpense 💸")
                .toolbar {
                    Button("Add expense", systemImage: "plus") {
                        showingAddExpense = true
                    }
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
        }
    }
    
    func removeItems(at offsets: IndexSet, in inputArray: [ExpenseItem]) {
        var objectsToDelete = IndexSet()

        for offset in offsets {
            let item = inputArray[offset]

            if let index = expenses.items.firstIndex(of: item) {
                objectsToDelete.insert(index)
            }
        }

        expenses.items.remove(atOffsets: objectsToDelete)
    }
    
    func removePersonalItems(at offsets: IndexSet) {
        removeItems(at: offsets, in: expenses.personalItems)
    }

    func removeBusinessItems(at offsets: IndexSet) {
        removeItems(at: offsets, in: expenses.businessItems)
    }
}

#Preview {
    ContentView()
}
