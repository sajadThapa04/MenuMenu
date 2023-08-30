//
//  GalleryView.swift
//  Restaurant
//
//  Created by Sajad Thapa on 25/8/2023.
//

import SwiftUI

struct GalleryView: View {
    @State var photoData = [String]()
    @State var sheetViews = false
    @State var selectedPhotos = ""
    var dataService = DataService()
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Gallery")
                .font(.headline)
                .fontWeight(.bold)
            
            
            GeometryReader{proxy in
                ScrollView(showsIndicators:false){
                    LazyVGrid(columns:[GridItem(),GridItem(),GridItem()]){
                        ForEach(photoData,id:\.self) {
                            p in Image(p)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: (proxy.size.width-20)/3)
                                .clipped()
                                .onTapGesture {
                                    selectedPhotos = p 
                                    sheetViews = true
                                }
                        }
                    }
                }
                
            }
        }
        .padding(.horizontal)
        .onAppear{
            photoData = dataService.getPhoto()
        }
        .sheet(isPresented: $sheetViews) {
            PhotoView(selectedPhotos: $selectedPhotos, sheetView: $sheetViews)
        }
        
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
