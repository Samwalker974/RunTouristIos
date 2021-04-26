//
//  ViewController.swift
//  RunTouristIos
//
//  Created by SamuelS on 19/04/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var backN: UIStackView!
    @IBOutlet weak var backO: UIStackView!
    @IBOutlet weak var backE: UIStackView!
    @IBOutlet weak var backS: UIStackView!
    
    @IBOutlet weak var imgN: UIImageView!
    @IBOutlet weak var imgO: UIImageView!
    @IBOutlet weak var imgE: UIImageView!
    @IBOutlet weak var imgS: UIImageView!
    
    @IBOutlet weak var start: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backN.layer.cornerRadius = 20
        backE.layer.cornerRadius = 20
        backS.layer.cornerRadius = 20
        backO.layer.cornerRadius = 20
        
        imgN.layer.cornerRadius = 20
        imgO.layer.cornerRadius = 20
        imgE.layer.cornerRadius = 20
        imgS.layer.cornerRadius = 20
        
        backN.layer.isHidden = true
        backS.layer.isHidden = true
        backE.layer.isHidden = true
        backO.layer.isHidden = true
    }
    
    @IBAction func affMenu(_ sender: UIButton) {
        backN.layer.isHidden = false
        backS.layer.isHidden = false
        backE.layer.isHidden = false
        backO.layer.isHidden = false
        start.layer.isHidden = true
        
    }
    

}

