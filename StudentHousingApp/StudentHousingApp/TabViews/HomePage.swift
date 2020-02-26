//
//  HomePage.swift
//  StudentHousingApp
//
//  Created by Mayra Serrato on 2/25/20.
//  Copyright © 2020 Capstone Project. All rights reserved.
//

import SwiftUI

struct HomePage : View {
    
    var categoryName:String
    var housePosts:[housePost]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
            .font(.title)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    ForEach(self.housePosts, id: \.name) {
                        post in
                        NavigationLink(destination: HomePage_Post(post: post))
                        {
                        HomePage_Post(post: post)
                            .frame(width: CGFloat(300))
                            .padding(.trailing, CGFloat(30))
                        }
                    }
                }
            }
        }
    }
}

#if DEBUG
struct HomePage_Previews : PreviewProvider {
    static var previews: some View {
        HomePage(categoryName: "APARTMENTS", housePosts: houseData)
    }
}
#endif

