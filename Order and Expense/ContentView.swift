//
//  ContentView.swift
//  Order and Expense
//
//  Created by Jordan Williams on 5/11/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var order = Order()
    @ObservedObject var expenses = Expenses()
    @State private var date = Date()
    @State private var checkbox1: Bool = false
    @State private var checkbox2: Bool = false
    @State private var checkbox3: Bool = false
    @State private var showingAddExpense = false
    
    let quote = "If your dream don't scare you, then they are too small - Richard Branson"
    
    
    var body: some View {
        NavigationView {
            Section {
                Form {
                    Section {
                        Text(quote)
                    }
                    Section {
                        VStack {
                            Toggle(isOn: $checkbox1){
                                Text("😀")
                            Toggle(isOn: $checkbox2){
                                Text("😐")
                            Toggle(isOn: $checkbox3){
                                Text("☹️")
                                    }
                                }
                            }
                        }
                    }
                    Section {
                            NavigationLink(
                                destination: AddressView(order: order)) {
                                        Text("Add Order")
                                        }
                        Section {
                            NavigationLink(
                                destination: AddView(expenses: expenses)) {
                                        Text("Add Expense")
                                            }
                                        }
                                    }
                }
                
            }
            .navigationBarTitle(Text("Jordan's Landing Page"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(expenses: Expenses())
        }
    }


