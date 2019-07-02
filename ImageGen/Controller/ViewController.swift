//
//  ViewController.swift
//  MemeGen
//
//  Created by Stephen Ouyang on 7/1/19.
//  Copyright © 2019 Stephen Ouyang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        
        ServiceLayer.request(router: Router.getNasaData) { (result: Result<[String: String]>) in
            switch result {
            case .success(let result):
                print("success")
                print(result)
            case .failure(let error):
                print("fail")
            }
        }
    }
}

