//
//  ContentView.swift
//  Petrescue
//
//  Created by Admin on 2021/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomePage()
                .tabItem {
                    Image(systemName: "house")
                    Text("首页")
                        .font(.system(size: 16))
                }.tag(0)
            ShowPage()
            .tabItem {
                Image(systemName: "gear")
                Text("秀宠").font(.system(size: 16))
            }.tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
