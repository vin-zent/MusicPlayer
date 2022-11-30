//
//  InnerMusicViewController.swift
//  MusicPlayer
//
//  Created by ddukk9 on 14/11/22.
//

import UIKit

class InnerMusicViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let musicList = MusicArray()
    
    @IBOutlet weak var listtable: UITableView!
    
    public var names: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        listtable.delegate = self
        listtable.dataSource = self
        
        let nib = UINib(nibName: "SongsTableViewCell", bundle: nil)
        listtable.register(nib, forCellReuseIdentifier: "SongTable")
        
        
      
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3 + musicList.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath) as! ImageTableViewCell
            
            cell.imageCar.image = UIImage(named: names)
            
            return cell
        }else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailsCell", for: indexPath) as! DetailsTableViewCell
            
            cell.titleLabel.text = names
            return cell
        }

        else if indexPath.row == 2{

            
            let cell = tableView.dequeueReusableCell(withIdentifier: "iconCell", for: indexPath)
            
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SongTable", for: indexPath) as! SongsTableViewCell
            
            
            
            cell.songLabel.text = musicList.list[indexPath.row - 3].songName
            cell.detailsLabel.text = musicList.list[indexPath.row - 3].songdetails
            cell.songImage.image = UIImage(named: musicList.list[indexPath.row - 3].imageName)
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row >= 3{
            let vc = storyboard?.instantiateViewController(withIdentifier: "Player") as! PlayerViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
