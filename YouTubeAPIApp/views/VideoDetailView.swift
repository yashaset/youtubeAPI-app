//
//  VideoDetailView.swift
//  YouTubeAPIApp
//
//  Created by Yash on 14/09/24.
//

import SwiftUI
import YouTubePlayerKit
struct VideoDetailView: View {
    var video: Video
    var body: some View {
        
        GeometryReader { proxy in
            VStack(alignment: .leading){
                
                let youtubePlayer = YouTubePlayer(
                    source: .video(id: video.snippet?.resourceId?.videoId ?? ""),
                    configuration: .init(
                        autoPlay: false
                    )
                )
                
                YouTubePlayerView(youtubePlayer).frame(
                    width: proxy.size.width,
                    height: proxy.size.width / 1.777
                )
                ScrollView{
                    VStack(alignment: .leading){
                        Text(video.snippet?.title ?? "")
                            .font(.title2)
                            .bold()
                            .padding(.bottom, 30)
                        Text(video.snippet?.description ?? "")
                    }
                }
                .scrollIndicators(.hidden)
                .padding()
            }
            
        }
        
    }
}

//#Preview {
//    VideoDetailView()
//}
