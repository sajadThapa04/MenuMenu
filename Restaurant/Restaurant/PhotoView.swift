//
//  PhotoView.swift
//  Restaurant
//
//  Created by Sajad Thapa on 26/8/2023.
//

import SwiftUI

struct PhotoView: View {
    @Binding var selectedPhotos:String
    @Binding var sheetView:Bool
    var body: some View {
        ZStack{
            
            Image(selectedPhotos)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack{
                HStack{
                    Spacer()
                    Button {
                        sheetView = false
                    } label: {
                        Image(systemName: "x.circle")
                            .scaleEffect(2)
                            .foregroundColor(.black)
                    }
                }.padding()
                Spacer()
            }
            
        }
        
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(selectedPhotos: Binding.constant("gallery1"), sheetView: Binding.constant(true))
    }
}
