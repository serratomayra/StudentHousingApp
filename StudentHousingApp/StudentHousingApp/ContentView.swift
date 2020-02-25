//
//  ContentView.swift
//  StudentHousingApp
//
//  Created by Mayra Serrato on 2/3/20.
//  Copyright © 2020 Capstone Project. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            HomePage()
                .font(.title)
                .multilineTextAlignment(.center)
                .tabItem {
                    VStack {
                        Image("homeLogo")
                        Text("Home")
                    }
                }
                .tag(0)
            FavoritesPage()
                .font(.title)
                .tabItem {
                    VStack {
                        Image("favoriteLogo")
                        Text("Favorites")
                    }
                }
                .tag(1)
            ProfilePage()
            .font(.title)
            .tabItem {
                VStack {
                    Image("profileLogo")
                    Text("Profile")
                    }
                }
                .tag(2)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
