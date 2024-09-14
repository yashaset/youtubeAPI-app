//
//  VideoRowView.swift
//  YouTubeAPIApp
//
//  Created by Yash on 14/09/24.
//

import SwiftUI

struct VideoRowView: View {
    var video: Video
    var body: some View {
        
        VStack(alignment: .leading){
            Text(video.snippet?.title ?? "").bold()
            if let url = URL(string: video.snippet?.thumbnails.medium?.url ?? ""){
                AsyncImage(url: url) { img in
                    img
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                } placeholder: {
                    ProgressView()
                }

            }
        }
        .padding(.vertical)
       
       
    }
}

//#Preview {
//    VideoRowView()
//}
