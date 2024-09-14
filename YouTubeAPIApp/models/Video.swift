//
//  Video.swift
//  YouTubeAPIApp
//
//  Created by Yash on 14/09/24.
//

import Foundation

struct Video : Decodable, Identifiable{
    var id: String
    var snippet: Snippet?
 
    
    struct Snippet: Decodable{
        var title: String
        var description : String
        var thumbnails : Thumbnails
        var resourceId: ResourceId?
    }
    struct ResourceId:Decodable{
        var videoId: String
    }
    struct Thumbnails:Decodable{
        var medium : ThumbnailSize?
    }
    struct ThumbnailSize:Decodable{
        var height: Int
        var width: Int
        var url: String
    }
}
