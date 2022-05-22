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
                VStack {
                    Text("Home Screen")
                    NavigationLink("#1 Go to a screen", destination: Text("Hey Welcome to screen example 1"))
                        .foregroundStyle(.white)
                    
                    NavigationLink(destination: Text("Hey welcome to the profile screen")){
                        Image(systemName: "person")
                            .symbolVariant(.fill.circle)
                            .foregroundStyle(.white)
                            .font(.title)
                    }
                }
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
