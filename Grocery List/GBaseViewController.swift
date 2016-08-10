//
//  GBaseViewController.swift
//  Grocery List
//
//  Created by Rohit Nisal on 8/7/16.
//  Copyright © 2016 Rohit Nisal. All rights reserved.
//

import UIKit

class GBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func navigationBarTitle(title: String) -> Void {
        self.navigationItem.title = title
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true;
    }
}
