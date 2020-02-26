//
//  HomePage_Post.swift
//  StudentHousingApp
//
//  Created by Mayra Serrato on 2/26/20.
//  Copyright © 2020 Capstone Project. All rights reserved.
//

import SwiftUI

struct HomePage_Post : View {
    
    var post:housePost
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(post.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            VStack(alignment: .leading, spacing: 5.0) {
            Text(post.name)
                .foregroundColor(.primary)
                .font(.headline)
                Text(post.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                    .frame(height: 40)
            }
        }
    }
}

#if DEBUG
struct HomePage_Post_Previews : PreviewProvider {
    static var previews: some View {
        HomePage_Post(post: houseData[0])
    }
}
#endif
