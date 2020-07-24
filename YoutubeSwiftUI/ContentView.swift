//
//  ContentView.swift
//  YoutubeSwiftUI
//
//  Created by Abraham Lay (ID) on 24/07/20.
//  Copyright © 2020 Abraham Lay (ID). All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Home")
                }
            Explore()
                .tabItem{
                        Image(systemName: "paperplane.fill")
                        Text("Explore")
                }
            Subscription()
                .tabItem{
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                }
            Inbox()
                .tabItem{
                        Image(systemName: "envelope.fill")
                        Text("Inbox")
                }
            Library()
                .tabItem{
                        Image(systemName: "play.rectangle.fill")
                        Text("Library")
                }
            }
            .accentColor(Color.red)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View{
    var body: some View{
        NavigationView{
                Content()
                
                .navigationBarItems(
                    leading:
                    HStack{
                        Button(action: {print("Hello Button")}){
                            Image("youtube").renderingMode(.original)
                            .resizable()
                                .frame(width:60, height: 60)
                        }
                    },
                    trailing:
                    HStack(spacing:20){
                            Button(action: {print("Hello Print")}){
                                Image(systemName: "tray.full").foregroundColor(Color.secondary)
                            }
                            
                            Button(action: {print("Hello Print")}){
                                Image(systemName: "video.fill").foregroundColor(Color.secondary)
                            }
                            
                            Button(action: {print("Hello Print")}){
                                Image(systemName: "magnifyingglass").foregroundColor(Color.secondary)
                            }
                            
                            Button(action: {print("Hello Print")}){
                                Image("profile")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width:20, height: 20)
                                    .clipShape(Circle())
                            }
                    }
                )
            
                    .navigationBarTitle("", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Content : View {
    var body: some View{
        List{
            //item 1
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("content1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("10:00")
                        .padding(.all,5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing,5)
                        .padding(.bottom,5)
                }
                
                HStack(spacing: 20){
                    Image("profile")
                        .resizable()
                        .frame(width:30, height: 30)
                        .clipShape(Circle())
                    VStack (alignment: .leading){
                        Text("Tutorial Beginner Android #1")
                            .font(.headline)
                        Text("Menjadi Android Developer itu mudah...")
                            .font(.caption)
                        Text("300x ditonton - 9 jam yang lalu")
                            .font(.caption)
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
                
            }
            //item 2
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("content2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("10:00")
                        .padding(.all,5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing,5)
                        .padding(.bottom,5)
                }
                
                HStack(spacing: 20){
                    Image("profile")
                        .resizable()
                        .frame(width:30, height: 30)
                        .clipShape(Circle())
                    VStack (alignment: .leading){
                        Text("Tutorial Beginner Android #2")
                            .font(.headline)
                        Text("Menjadi Android Developer itu mudah...")
                            .font(.caption)
                        Text("300x ditonton - 9 jam yang lalu")
                            .font(.caption)
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
                
            }
            
            //item 3
            
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("content3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("10:00")
                        .padding(.all,5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing,5)
                        .padding(.bottom,5)
                }
                
                HStack(spacing: 20){
                    Image("profile")
                        .resizable()
                        .frame(width:30, height: 30)
                        .clipShape(Circle())
                    VStack (alignment: .leading){
                        Text("Tutorial Beginner Android #3")
                            .font(.headline)
                        Text("Menjadi Android Developer itu mudah...")
                            .font(.caption)
                        Text("300x ditonton - 9 jam yang lalu")
                            .font(.caption)
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
                
            }
        }
    }
}

struct Explore : View {
    var body: some View{
        Text("Explore")
    }
}

struct Subscription : View {
    var body: some View{
        Text("Subscription")
    }
}

struct Inbox : View {
    var body: some View{
        Text("Inbox")
    }
}

struct Library : View {
    var body: some View{
        Text("Library")
    }
}
