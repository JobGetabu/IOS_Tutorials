//
//  LoginViewController.swift
//  NavigationTut
//
//  Created by project x on 21/10/2019.
//  Copyright © 2019 project x. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController{
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func tapLogin(_ sender: Any) {
        navigateToMainNAv()
    }
    
    private func navigateToMainNAv(){
        
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        
        
        guard let mainNavigationVC = mainStoryBoard.instantiateViewController(withIdentifier: "MainNav") as? MainNav else {
            return
        }
        
        print(mainNavigationVC.topViewController)
        print(mainNavigationVC.viewControllers)
        
        present(mainNavigationVC, animated: true, completion: nil)
    }
}
