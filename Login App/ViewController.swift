//
//  ViewController.swift
//  Login App
//
//  Created by Amr El-Fiqi on 06/02/2023.
//

import UIKit
import FirebaseCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        FirebaseApp.configure()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "loginimage.jpg")!)
    }


}

