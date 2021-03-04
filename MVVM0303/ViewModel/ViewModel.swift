//
//  SwiftUIView.swift
//  MVVM0303
//
//  Created by 亞萱林 on 03/03/2021.
//

import SwiftUI

final class ViewModel: ObservableObject {
    
    @Published var photos = [Photo]()
    
    
    init() {
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/photos")!
        // 2.
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            do {
                if let photoData = data {
                    // 3.
                    let decodedData = try JSONDecoder().decode([Photo].self, from: photoData)
                    DispatchQueue.main.async {
                        self.photos = decodedData
                    }
                } else {
                    print("No data")
                }
            } catch {
                print("Error")
            }
        }.resume()
    }
}
