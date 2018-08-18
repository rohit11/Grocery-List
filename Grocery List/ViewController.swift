//
//  ViewController.swift
//  Grocery List
//
//  Created by Rohit Nisal on 8/7/16.
//  Copyright © 2016 Rohit Nisal. All rights reserved.
//

import UIKit

class ViewController: GBaseViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationBarTitle("SHOPPING LISTS")
        automaticallyAdjustsScrollViewInsets = false
        self.edgesForExtendedLayout = UIRectEdge.None
        self.tableView.contentInset = UIEdgeInsetsMake(-35, 0, 0, 0)
        self.tableView.backgroundView = nil
        self.tableView.backgroundColor = UIColor.clearColor()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("shoppinglistcell", forIndexPath: indexPath)
        cell.textLabel?.text = "My Shopping List"
        return cell
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80.0
    }
    
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let editAction = UITableViewRowAction(style: .Normal, title: "Edit") { (rowAction:UITableViewRowAction, indexPath:NSIndexPath) -> Void in
            //TODO: edit the row at indexPath here
        }
            editAction.backgroundColor = UIColor.blueColor()
        
        
        let deleteAction = UITableViewRowAction(style: .Normal, title: "Delete") { (rowAction:UITableViewRowAction, indexPath:NSIndexPath) -> Void in
            //TODO: Delete the row at indexPath here
        }
        deleteAction.backgroundColor = UIColor.redColor()
        
        return [editAction,deleteAction]
    }
}

