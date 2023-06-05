//
//  Chip.swift
//  MVI
//
//  Created by Kuldeep on 04/06/23.
//

import SwiftUI
import SwiftUIChipGroup

struct Chips: View {
    @State var tagArr: [ChipItem]
    
    var body: some View {
        ChipGroup(
            chips: tagArr,
            width: UIScreen.main.bounds.width - 90,
            selection: .none,
            deselectedBackground: Capsule().fill(Color(red: 247/255, green: 248/255, blue: 250/255)),
            deselectedTextColor: .black,
            font: .system(size: 12)
            
        )
    }
}
