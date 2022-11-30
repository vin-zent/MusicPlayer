//
//  MusicModel.swift
//  MusicPlayer
//
//  Created by ddukk9 on 15/11/22.
//

import Foundation

class Musicmodel{
    
    var songName: String = ""
    var songdetails: String = ""
    var imageName: String = ""
    var song: String = ""
    
    
    init(songName: String, songdetails: String, imageName: String, song: String) {
        self.songName = songName
        self.songdetails = songdetails
        self.imageName = imageName
        self.song = song
    }
    
    
}
