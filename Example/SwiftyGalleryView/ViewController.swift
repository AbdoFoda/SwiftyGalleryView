//
//  ViewController.swift
//  SwiftyGalleryView
//
//  Created by Abdo on 1/29/19.
//  Copyright © 2019 Abdo. All rights reserved.
//

import UIKit
import SwiftyGalleryView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let pubg_images = [#imageLiteral(resourceName: "winner") , #imageLiteral(resourceName: "looser") , #imageLiteral(resourceName: "drop")]
        self.galleryStack.initialize(with: pubg_images)
    }

    @IBOutlet weak var galleryStack: GalleryView!
    
}

