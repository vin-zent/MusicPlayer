//
//  FirstTableViewCell.swift
//  MusicPlayer
//
//  Created by ddukk9 on 25/10/22.
//

import UIKit

class FirstTableViewCell: UITableViewCell,  UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout, UINavigationControllerDelegate{
    

    var viewController: ViewController?
    var images = ["Music","Art","Virtual","Abstract"]
    var didSelectRow: ((_ data: String, _ i : Int) -> Void)? = nil // Closure
       
       var arrData = [String]()
       
       func configureCell(data: [String]) {
           // Setup CollectionView data
           self.arrData = data
           self.collectionviewitem.reloadData()
       }
    @IBOutlet weak var collectionviewitem: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.collectionviewitem.delegate = self
        self.collectionviewitem.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
   
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
            
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collCellid", for: indexPath) as? firstCollectionViewCell
        cell?.carImage.image = UIImage(named: images[indexPath.row])
        return cell!
       
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(images[indexPath.row])")
        
//        let controller =
//        self.storyboard.instantiateViewController(withIdentifier: "InnerMusic") as! InnerMusicViewController
//
//            self.navigationController?.pushViewController(controller, animated:true)

//        viewController?.pushView()
        
        
        let data = self.arrData[indexPath.row]
        let value = indexPath.row
                didSelectRow?(data,value)
    }
    
    
    

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
    let size = CGSize(width: 255, height: 147)
    return size
    }
    

}
