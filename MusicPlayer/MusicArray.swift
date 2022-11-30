//
//  MusicArray.swift
//  MusicPlayer
//
//  Created by Jeboy Mathew on 25/11/22.
//

import Foundation

class MusicArray{
    
    
    var list = [Musicmodel]()
    
    init(){
        list.append(Musicmodel(songName: "Until I Found You", songdetails: "Stephen Sanchez - Until I Found You", imageName: "image1", song: "song1"))
        list.append(Musicmodel(songName: "Kudukk Song", songdetails: "Love Action Drama", imageName: "image2", song: "song2"))
        list.append(Musicmodel(songName: "Orochimaru Theme Rimix", songdetails: "Naruto - Orochimaru", imageName: "image3", song: "song3"))
        list.append(Musicmodel(songName: "Ollulare", songdetails: "Ajagejantharam", imageName: "image4", song: "song4"))
        list.append(Musicmodel(songName: "Paraka Paraka", songdetails: "Dhanush Song", imageName: "image5", song: "song5"))
    }
}
