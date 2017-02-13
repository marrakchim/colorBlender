//
//  ViewController.swift
//  colorBlender
//
//  Created by Sakina on 13/02/2017.
//  Copyright © 2017 Sakina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var logo: UIImageView!
        

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.logo.image = UIImage(named: "logo_color_blender")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

