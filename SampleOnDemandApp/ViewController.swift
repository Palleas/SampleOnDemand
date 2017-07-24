//
//  ViewController.swift
//  SampleOnDemandApp
//
//  Created by Romain Pouclet on 2017-07-24.
//  Copyright © 2017 Buddybuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let request = NSBundleResourceRequest(tags: ["OtherTeam"])
        request.beginAccessingResources { (error) in
            print("Error = \(error)")
            request.endAccessingResources()

            let image = UIImage(named: "Richi-muscle")
            print("Loaded image: \(image)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

