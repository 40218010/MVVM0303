//
//  PhotoGallery.swift
//  MVVM0303
//
//  Created by 亞萱林 on 03/03/2021.
//

import SwiftUI


struct PhotoGallery: View {
    
    private let gridItem = [
        GridItem(.flexible(minimum: 10, maximum: 200)),
        GridItem(.flexible(minimum: 10, maximum: 200)),
        GridItem(.flexible(minimum: 10, maximum: 200)),
        GridItem(.flexible(minimum: 10, maximum: 200))
    ]
    @ObservedObject var vm = ViewModel()
    
    
    var body: some View {
        
     
        ScrollView {
            LazyVGrid (columns: gridItem , content: {
                ForEach(vm.photos, id: \.self) { photo in
                   
                    SingleSquare(photo: photo)
                   
                }
                
            })
            
        }
       
    }
    
}




struct PhotoGallery_Previews: PreviewProvider {
    static var previews: some View {
        PhotoGallery()
    }
}


