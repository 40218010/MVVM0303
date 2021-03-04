//
//  SingleSquare.swift
//  MVVM0303
//
//  Created by 亞萱林 on 03/03/2021.
//

import SwiftUI
import Kingfisher


struct SingleSquare: View {
    let photo : Photo
    
    
    var body: some View {
        
        ZStack {
            
            //  Image("ba5b26")
            KFImage(URL(string: photo.thumbnailUrl))
                .resizable()
                .scaledToFit()
            
            
            VStack(alignment: .center, spacing: 6) {
                
                Text("\(photo.id)")
                
                Text(photo.title)
                    .font(.system(size: 15))
                    .padding(.leading,1)
                    .frame(width:80)
                    .lineLimit(1)
                
            }
            .foregroundColor(.white)
            
        }
    }
}

/* struct SingleSquare_Previews: PreviewProvider {
 static var previews: some View {
 SingleSquare(photo: Photo.init(albumId: 1, id: 8, title: "aut porro officiis laborum odit ea laudantium corporis", url: "https://via.placeholder.com/600/54176f", thumbnailUrl: "https://via.placeholder.com/150/54176f"))
 }
 } */
