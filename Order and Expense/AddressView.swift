//
//  AddressView.swift
//  Order and Expense
//
//  Created by Bobert on 5/11/21.
//

import SwiftUI

struct AddressView: View {
        @ObservedObject var order: Order
        @ObservedObject var expenses = Expenses()
        var body: some View {
            Form {
            Section {
                TextField("Name", text: $order.name)
                TextField("Number", text: $order.number)
                TextField("Description", text: $order.description)
                TextField("Quoted Price", text: $order.price)
                TextField("Delivered Date", text: $order.date)
                
                }
                
            Section {
                NavigationLink(
                    destination: OrderView(order: order)) {
                    Text("View Orders")
                    }
                }
            .disabled(order.hasValidAddress == false)
            }
            .navigationBarTitle("Order Details", displayMode: .inline)
        }
    }


struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView(order: Order())
    }
}
