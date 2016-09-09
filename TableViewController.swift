//
//  TableViewController.swift
//  StretchTabelviewCell
//
//  Created by ling toby on 9/9/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var selectedIndexPaths = NSIndexPath()
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = "test"
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        selectedIndexPaths = indexPath
        self.tableView.reloadData()

    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if(indexPath == selectedIndexPaths){
            return 300;
        }
        else{
            return 50; //a default size if the cell index path is anything other than the 1st or second row.
        }
        
    }

}
