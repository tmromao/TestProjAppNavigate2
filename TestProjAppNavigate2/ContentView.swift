//
//  ContentView.swift
//  TestProjAppNavigate2
//
//  Created by Tiago Miguel de Jesus Romao on 22/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem({
                    Label("Home", systemImage: "house")
                })
            
            SettingsView()
                .tabItem({
                    Label("Settings", systemImage: "gearshape")
                })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color.mint
                Text("Home Screen")
            }
            .navigationTitle("Home")
        }
    }
}

struct SettingsView: View{
    var body: some View {
        NavigationView {
            ZStack{
                Color.pink
                Text("Settings Screen")
            }
            .navigationTitle("Settings")
        }
    }
}
