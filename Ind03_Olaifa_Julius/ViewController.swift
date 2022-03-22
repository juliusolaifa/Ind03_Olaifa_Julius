//
//  ViewController.swift
//  Ind03_Olaifa_Julius
//
//  Created by Julius Olaifa on 2/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stateMap: UIImageView!
    @IBOutlet weak var stateFlag: UIImageView!
    @IBOutlet weak var stateName: UILabel!
    @IBOutlet weak var stateArea: UILabel!
    
    var mapImage = UIImage()
    var flagImage = UIImage()
    var name = ""
    var area = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //stateMap.image = mapImage
        stateName.text = name
        stateArea.text = area + " Sq. Miles"
        stateFlag.image = flagImage
        stateMap.image = mapImage
    }

    
}

