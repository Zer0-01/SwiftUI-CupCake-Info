//
//  AddressView.swift
//  CupCakeCafe
//
//  Created by Silentmode Sdn Bhd on 14/05/2024.
//

import SwiftUI

struct AddressView: View {
    @Bindable var order: Order
    
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $order.name)
                TextField("Street Address", text: $order.streetAddress)
                TextField("City", text: $order.city)
                TextField("Zip", text: $order.zip)
            }
            
            Section {
                NavigationLink("Check out") {
                    CheckOutView(order: order)
                }
            }
            .disabled(order.hasValidAddress == false)
        }
    }
}

#Preview {
    AddressView(order: Order())
}
