//
//  OrderView.swift
//  Order and Expense
//
//  Created by Bobert on 5/11/21.
//
import SwiftUI



struct OrderView: View {
    @ObservedObject var order: Order
    @State private var numbers = [Int]()
    @State private var currentNumber = 1

    var body: some View {
        VStack {
                    List(numbers, id: \.self) {
                        Text("\($0)")
                    }

                    Button("Add Order Number") {
                        self.numbers.append(self.currentNumber)
                        self.currentNumber += 001
                    }
                }
            .navigationBarItems(leading: EditButton())
            }
        }
    
struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(order: Order())
    }
}

