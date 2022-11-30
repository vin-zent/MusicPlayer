//
//  ViewController.swift
//  MusicPlayer
//
//  Created by ddukk9 on 25/10/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var table: UITableView!
    
    var imagesArry = FourArray()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        table.delegate = self
        table.dataSource = self
    }
    
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "bigCarasol", for: indexPath) as! FirstTableViewCell
                    //set the data here
            cell.configureCell(data: ["Music","Art","Virtual","second"])
                    
                    cell.didSelectRow = { data, i in
                        // Goto second view controller
                        let vc = self.storyboard?.instantiateViewController(withIdentifier: "InnerMusic") as! InnerMusicViewController
                        vc.names = self.imagesArry.fourList[i].imageName
                        self.navigationController?.pushViewController(vc, animated: true)
                    }
                    return cell
                }
                else if indexPath.row == 1{
                    let cell = tableView.dequeueReusableCell(withIdentifier: "trending", for: indexPath)
                            //set the data here
                            return cell
                }else if indexPath.row == 2{
                    let cell = tableView.dequeueReusableCell(withIdentifier: "topsongs", for: indexPath)  as! SecondTableViewCell
                    

                            return cell
                }else if indexPath.row == 3{
                    let cell = tableView.dequeueReusableCell(withIdentifier: "SongsTop", for: indexPath)
                    
                    return cell
                }else {
                    let cell = tableView.dequeueReusableCell(withIdentifier: "TopContent", for: indexPath) as! ThirdTableViewCell
                    
                    return cell
                }
    }
    
    
 

    


}

