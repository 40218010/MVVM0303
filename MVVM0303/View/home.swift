//
//  home.swift
//  MVVM0303
//
//  Created by 亞萱林 on 04/03/2021.
//

import SwiftUI

struct home: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.black
                VStack {
                    
                    Spacer()
                    Text("1995")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                    Spacer()
                    
                    NavigationLink(
                        destination: PhotoGallery(),
                        label: {
                            Text("Start")
                        })
                    
                    Spacer()
                    
                }
            }
            .navigationBarHidden(true)
            
        }
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
