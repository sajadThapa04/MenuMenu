//
//  MenuView.swift
//  Restaurant
//
//  Created by Sajad Thapa on 25/8/2023.
//

import SwiftUI

struct MenuView: View {
  @State  var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        List(menuItems) { item in
           MenuListItem(item: item)
            
        }
        .listStyle(.plain)
        .onAppear(){
            menuItems = dataService.getData()
        }
    }
    
    struct MenuView_Previews: PreviewProvider {
        static var previews: some View {
            MenuView()
        }
    }
}
