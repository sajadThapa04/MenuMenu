//
//  MenuListItem.swift
//  MenuApp
//
//  Created by Sajad Thapa on 20/8/2023.
//

import SwiftUI

struct MenuListItem: View {
    var item:MenuItem
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 40)
                .cornerRadius(20)
            
            Text(item.name)
                .bold()
            Spacer()
            Text("$" + item.price)
            

        }
        .listRowSeparator(.hidden)
        .listRowBackground(Color(.brown)
            .opacity(0.1))

    }
}

struct MenuListItem_Previews: PreviewProvider {
    static var previews: some View {
        MenuListItem(item: MenuItem(name: "Test", price: "$22", imageName: "tako-sushi"))
    }
}
