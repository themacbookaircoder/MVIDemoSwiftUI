//
//  MVIApp.swift
//  MVI
//
//  Created by Kuldeep on 04/06/23.
//

import SwiftUI
import SwiftUIChipGroup

@main
struct MVIApp: App {
    
    var body: some Scene {
        WindowGroup {
            let arr = [FeedModel(feedTitle: "안녕 나 응애 ", feedTags: [ChipItem(name: "#2023"), ChipItem(name: "#TODAYISMONDAY"),
                                                        ChipItem(name: "#TOP"), ChipItem(name: "#POPS!"), ChipItem(name: "#WOW"), ChipItem(name: "#ROW")], img: "avatar1"), FeedModel(feedTitle: "안녕 나 응애 ", feedTags: [ChipItem(name: "#2023"), ChipItem(name: "#TODAYISMONDAY")], img: "avatar")]
            
            ContentView(arr: arr)
                
                
        }
    }
}
