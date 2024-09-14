//
//  FeedView.swift
//  YouTubeAPIApp
//
//  Created by Yash on 14/09/24.
//

import SwiftUI

struct FeedView: View {
    @State private var videos = [Video]()
    @State private var selectedVideo: Video?
    
    
    var body: some View {
        List(videos){ v in
            VideoRowView(video: v).onTapGesture {
                selectedVideo = v
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .scrollIndicators(.hidden)
        
        .task {
            self.videos = await DataService().getVideos()
        }
        .sheet(item: $selectedVideo) { video in
            VideoDetailView(video: video)
        }
        .padding(.horizontal)
    }
        
}

#Preview {
    FeedView()
}
