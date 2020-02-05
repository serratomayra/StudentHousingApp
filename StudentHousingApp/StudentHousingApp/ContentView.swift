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
            Text("First View!")
                .font(.title)
                .multilineTextAlignment(.center)
                .tabItem {
                    VStack {
                        Image("first")
                        Text("Home")
                    }
                }
                .tag(0)
            Text("Second View!")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Favorites")
                    }
                }
                .tag(1)
            Text("Third View!")
            .font(.title)
            .tabItem {
                VStack {
                    Image("first")
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
