//
//  HomeView.swift
//  YouTubeAPIApp
//
//  Created by Yash on 14/09/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
            TabView{
                FeedView().tabItem {
                    Image(systemName: "play.square.stack")
                    Text("Feed")
                }
            }
            .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
