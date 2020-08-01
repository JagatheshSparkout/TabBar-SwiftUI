//
//  TabBarView.swift
//  Tabbar-SwiftUI
//
//  Created by Keerthi on 01/08/20.
//  Copyright © 2020 Hxtreme. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    init() {
        UITabBar.appearance().barTintColor = UIColor.systemPink.withAlphaComponent(0.1)
    }
    
    var body: some View {
        VStack() {
            TabView {
                HomeView().tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }.tag(1)
                MapContentView().tabItem {
                    Image(systemName: "map.fill")
                    Text("Map") }.tag(2)
                ProfileView().tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile") }.tag(3)
            }.accentColor(.white)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
