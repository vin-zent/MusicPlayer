//
//  ThirdTableViewCell.swift
//  MusicPlayer
//
//  Created by ddukk9 on 29/10/22.
//

import UIKit

class ThirdTableViewCell: UITableViewCell ,UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    var ThirdImageArr = ["SecCard2","SecCard1","SecCard3","SecCard4","SecCard5","SecCard6","SecCard7"]

    @IBOutlet weak var TopCollection: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.TopCollection.delegate = self
        self.TopCollection.dataSource = self
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ThirdCell", for: indexPath) as? ThirdCollectionViewCell
        cell?.ThirdImage.image = UIImage(named: ThirdImageArr[indexPath.row])
        return cell!
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
