//
//  FeedView.swift
//  MVI
//
//  Created by Kuldeep on 05/06/23.
//

import SwiftUI
import SwiftUIChipGroup

struct FeedView: View {
    
    
    var feedData: FeedModel
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(feedData.displayable(.userImage))
                    .resizable()
                    .frame(width: 44, height: 44)
                VStack {
                    HStack {
                        Text(feedData.displayable(.user))
                            .font(.system(size: 14, weight: .bold))
                        Image("blueTick")
                            .resizable()
                            .frame(width: 14, height: 14)
                    }
                    HStack {
                        Text("165cm")
                            .font(.system(size: 12))
                        Text("・ 53kg")
                            .font(.system(size: 12))
                    }
                }
                Spacer()
                Text("팔로우")
                    .font(.system(size: 12))
                    .frame(height: 24)
                    .padding([.leading, .trailing], 12)
                    .foregroundColor(Color.white)
                    .background(Color(red: 1/255, green: 185/255, blue: 159/255))
                    .cornerRadius(12)
                
            }
            
            
            VStack(alignment: .leading, spacing: 10) {
                Text("지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?")
                    .font(.system(size: 14, weight: .bold))
                Text("지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어?\n\n후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 제일 재밌었다던데 맞아???\n\n올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 n아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!")
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 49/255, green: 59/255, blue: 73/255))
            }
            VStack {
                ChipGroup(
                    chips: feedData.feedTags,
                    width: UIScreen.main.bounds.width - 90,
                    selection: .none,
                    deselectedBackground: Capsule().fill(Color(red: 247/255, green: 248/255, blue: 250/255)),
                    deselectedTextColor: .black,
                    font: .system(size: 12)
                    
                )
                
                VStack {
                    Image("img")
                        .resizable()
                        .frame(height: widthPercentage(90))
                    
                    HStack {
                        Image("heart")
                            .resizable()
                            .frame(width: 35, height: 35)
                        Text("5")
                            .font(.system(size: 12))
                            .foregroundColor(Color(red: 49/255, green: 59/255, blue: 73/255))
                        
                        Image("comment")
                            .resizable()
                            .frame(width: 35, height: 35)
                        Text("5")
                            .font(.system(size: 12))
                            .foregroundColor(Color(red: 49/255, green: 59/255, blue: 73/255))
                        
                        Image("bookmark")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .foregroundColor(Color(red: 49/255, green: 59/255, blue: 73/255))
                        
                        Image("3dot")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .foregroundColor(Color(red: 49/255, green: 59/255, blue: 73/255))
                        Spacer()
                    }
                }
                Divider()
                    .frame(height: 1)
                    .padding(.horizontal, 30)
                    .background(Color(red: 247/255, green: 248/255, blue: 250/255))
                
            }
            
            VStack {
                HStack {
                    Image("avatar")
                        .resizable()
                        .frame(width: 44, height: 44)
                    VStack {
                        HStack {
                            Text("안녕 나 응애 ")
                                .font(.system(size: 14, weight: .bold))
                            Image("blueTick")
                                .resizable()
                                .frame(width: 14, height: 14)
                            Text("1일전")
                                .font(.system(size: 10))
                                .foregroundColor(Color.gray)
                        }
                    }
                    Spacer()
                    Image("3dot")
                        .resizable()
                        .frame(width: 35, height: 35)
                    
                }
                
                VStack {
                    Text("어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 49/255, green: 59/255, blue: 73/255))
                    
                    HStack {
                        Image("heart")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("5")
                            .font(.system(size: 12))
                            .foregroundColor(Color(red: 49/255, green: 59/255, blue: 73/255))
                        
                        Image("comment")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("5")
                            .font(.system(size: 12))
                            .foregroundColor(Color(red: 49/255, green: 59/255, blue: 73/255))
                        
                        Spacer()
                    }
                    
                    HStack {
                        Image("avatar1")
                            .resizable()
                            .frame(width: 44, height: 44)
                        VStack {
                            HStack {
                                Text("ㅇㅅㅇ")
                                    .font(.system(size: 14, weight: .bold))
                                //                                            Image("blueTick")
                                //                                                .resizable()
                                //                                                .frame(width: 14, height: 14)
                                Text("1일전")
                                    .font(.system(size: 10))
                                    .foregroundColor(Color.gray)
                            }
                        }
                        Spacer()
                        Image("3dot")
                            .resizable()
                            .frame(width: 35, height: 35)
                        
                    }
                    VStack {
                        Text("어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!")
                            .font(.system(size: 14))
                            .foregroundColor(Color(red: 49/255, green: 59/255, blue: 73/255))
                        
                        HStack {
                            Image("heart")
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text("5")
                                .font(.system(size: 12))
                                .foregroundColor(Color(red: 49/255, green: 59/255, blue: 73/255))
                            
                            Spacer()
                        }
                    }
                }
                .padding(.leading, 44)
            }
        }
    }
}
