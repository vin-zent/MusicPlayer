//
//  FourArray.swift
//  MusicPlayer
//
//  Created by ddukk9 on 15/11/22.
//

import Foundation


class FourArray{
    
    var fourList = [FourModel]()
    
    init(){
        fourList.append(FourModel(imageName: "Music"))
        fourList.append(FourModel(imageName: "Art"))
        fourList.append(FourModel(imageName: "Virtual"))
        fourList.append(FourModel(imageName: "Abstract"))
    }
}
