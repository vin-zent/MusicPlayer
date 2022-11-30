//
//  RegisterViewController.swift
//  MusicPlayer
//
//  Created by Jeboy Mathew on 23/11/22.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var passTf: UITextField!
    @IBOutlet weak var emailTf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func registerBtn(_ sender: Any) {
        let email = emailTf.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let pass = passTf.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        
        Auth.auth().createUser(withEmail: email, password: pass){
            (AuthDataResult,error) in
            if error != nil{
                print("error")
            }else{
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "home") as! ViewController
                self.present(vc, animated: true)
            }
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
