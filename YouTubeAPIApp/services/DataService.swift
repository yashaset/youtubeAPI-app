//
//  DataService.swift
//  YouTubeAPIApp
//
//  Created by Yash on 14/09/24.
//

import Foundation
struct DataService{
    private let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func getVideos() async->[Video]{
//        check if api keys is there
        
        guard apiKey != nil else{
            return [Video]()
        }
        let urlString = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLeTCLwLMg7j92Vy6Zv3GgEf6g-aw5apFw&key=\(apiKey!)&maxResults=20"
//        create URL
        let url = URL(string: urlString)
        if let url = url {
            let request =  URLRequest(url: url)
            let session = URLSession.shared
            do{
                let (data, _) = try await session.data(for: request)
                let decoder = JSONDecoder()
                let playlist = try decoder.decode(Playlist.self, from: data)
                return playlist.items
            }catch{
                print(error)
            }
           
        }
//        create URLReqeust Instance
       
       
       
        return [Video]()
    }
}
