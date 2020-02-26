//
//  HomePage_Detail.swift
//  StudentHousingApp
//
//  Created by Mayra Serrato on 2/26/20.
//  Copyright © 2020 Capstone Project. All rights reserved.
//

import SwiftUI

struct HomePage_Detail : View {
    
    var post:housePost
    
    var body: some View {
        List{
            ZStack (alignment: .bottom) {
                Image(post.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    Rectangle()
                        .frame(height: 80)
                        .opacity(0.25)
                        .blur(radius: 10)
                        HStack{
                            VStack(alignment: .leading, spacing: 8){
                                Text(post.name)
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                            }
                            .padding(.leading)
                            .padding(.bottom)
                            Spacer()
                        }
                
                    }
            .listRowInsets(EdgeInsets())
            VStack(alignment: .leading) {
                Text(post.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                
                HStack {
                    Spacer()
                    FavoriteButton()
                    Spacer()
                }.padding(.top, 50)
                
            }.padding(.top)
            .padding(.bottom)
            
        }
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
        
    }
}


struct FavoriteButton : View {
    var body: some View {
        Button(action: {}){
            Text("Add to Favorites")
            }.frame(width: 200, height: 50)
            .foregroundColor(.white)
            .font(.headline)
        .background(Color.blue)
        .cornerRadius(10)
    }
}




#if DEBUG
struct HomePage_Detail_Previews : PreviewProvider {
    static var previews: some View {
        HomePage_Detail(post: houseData[0])
    }
}
#endif

