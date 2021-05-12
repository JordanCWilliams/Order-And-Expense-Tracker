//
//  Order.swift
//  Order and Expense
//
//  Created by Bobert on 5/11/21.
//

import Foundation

class Order: ObservableObject {
    static let types = ["Name", "Number", "Description", "Price", "Date"]

    @Published var type = 0
    @Published var quantity = 3

    @Published var specialRequestEnabled = false

    @Published var name = ""
    @Published var number = ""
    @Published var description = ""
    @Published var price = ""
    @Published var date = ""
    
    var hasValidAddress: Bool {
        if name.isEmpty || number.isEmpty || description.isEmpty || price.isEmpty  || date.isEmpty {
            return false
        }

        return true
    }
    
}
