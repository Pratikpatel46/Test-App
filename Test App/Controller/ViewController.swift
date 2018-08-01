//
//  ViewController.swift
//  Test App
//
//  Created by Pratik Patel on 01/08/18.
//  Copyright © 2018 Pratik Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var arrayHits:[Hits] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func fetchStoriesBy(page: Int) {
        
        SearchManager.shared.searchByDateWith(tag: "story", page: page) { (arrayHits, success, error) in
            
            if success && error == nil {
                self.arrayHits.append(contentsOf: arrayHits!)
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

