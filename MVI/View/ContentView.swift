//
//  ContentView.swift
//  MVI
//
//  Created by Kuldeep on 04/06/23.
//

import SwiftUI


struct ContentView: View {
    
    @State var messageText: String = ""
    
    var arr:[FeedModel] = []
    
    var body: some View {
        ZStack {
            
            VStack {
                VStack {
                    HStack {
                        Image("leftArrow")
                            .resizable()
                            .frame(width: 44, height: 44)
                            .aspectRatio(contentMode: .fill)
                            .onTapGesture {
                                
                            }
                        Spacer()
                        Text("자유톡")
                            .bold()
                        
                        Spacer()
                        Image("bell")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .aspectRatio(contentMode: .fit)
                    }
                }
                
                List {
                    ForEach(arr) { i in
                        FeedView(feedData: i)
                    }
                }
                .listStyle(PlainListStyle())
            }
            .frame(width: widthPercentage(95))
            .padding(.bottom, 40)
            
            VStack {
                Spacer()
                HStack {
                    
                    Image("imagesmode")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    TextField("댓글을 남겨주세요.", text: $messageText)
                        .frame(width: widthPercentage(70), height: 40)
                        .padding(.leading, 10)
                    
                    HStack {
                        Text("등록")
                            .font(.system(size: 14))
                            .foregroundColor(Color(red: 49/255, green: 59/255, blue: 73/255))
                    }
                    .frame(width: widthPercentage(12), height: widthPercentage(12))
                    .cornerRadius(25)

                }
                .frame(width: widthPercentage(100), height: 50)
                .cornerRadius(25)
                .background(Color.white)
            }
            .frame(width: widthPercentage(100))
            .padding(10)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
