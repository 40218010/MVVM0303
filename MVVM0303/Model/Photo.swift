//
//  Photo.swift
//  MVVM0303
//
//  Created by 亞萱林 on 03/03/2021.
//

import Foundation



struct Photo: Codable, Identifiable, Hashable {
    
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
    
    
}

