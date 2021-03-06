//
//  AddView.swift
//  Order and Expense
//
//  Created by Jordan Williams on 5/11/21.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var expenses: Expenses
    @State private var name = ""
    @State private var type = "Travel"
    @State private var amount = ""

    static let types = ["Food", "Travel", "Materials", "Tools"]
    
    var body: some View {
        NavigationView {
                    Form {
                        TextField("Name", text: $name)
                        Picker("Type", selection: $type) {
                            ForEach(Self.types, id: \.self) {
                                Text($0)
                            }
                        }
                        TextField("Amount", text: $amount)
                            .keyboardType(.numberPad)
                    }
                    .navigationBarTitle("Add new expense")
                    .navigationBarItems(trailing: Button("Save") {
                        if let actualAmount = Int(self.amount) {
                            let item = ExpenseItem(name: self.name, type: self.type, amount: actualAmount)
                            self.expenses.items.append(item)
                            
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    })
                }
            }
        }

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expenses: Expenses())
    }
}

