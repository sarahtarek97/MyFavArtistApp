//
//  appData.swift
//  myFavArtists
//
//  Created by Aboelnaga on 10/25/18.
//  Copyright © 2018 tamkeen. All rights reserved.
//

import Foundation

class AppData{
    
    private var _imageURL :String!
    private var _videoURL :String!
    private var _videoTitle :String!
    
    var imageURL: String{
        return _imageURL
    }
    var videoURL :String {
        return _videoURL
    }
    var videoTitle :String {
        return _videoTitle
    }
    
    init(imageURL: String,videoURL: String,videoTitle: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
