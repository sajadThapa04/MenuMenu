//
//  menuItem.swift
//  MenuApp
//
//  Created by Sajad Thapa on 20/8/2023.
//

import Foundation

struct MenuItem:Identifiable{
    var id:UUID = UUID()
    var name:String
    var price:String
    var imageName:String
}
