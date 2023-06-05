//
//  Model.swift
//  MVI
//
//  Created by Kuldeep on 05/06/23.
//

import Foundation
import SwiftUIChipGroup


struct FeedModel: Identifiable {
    
    var id = UUID().uuidString
    
    var feedTitle: String
    var feedTags: [ChipItem]
    var img: String
    
    enum InformationType {
        case user
        case userImage
    }
    
    func displayable(_ informationType: InformationType) -> String {
        switch informationType {
        case .user:
            return feedTitle
        case .userImage:
            return img
        }
    }
}
