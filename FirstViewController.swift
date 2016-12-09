//
//  FirstViewController.swift
//  To_Do_App
//
//  Created by Jade Pasion on 11/10/15.
//  Copyright © 2015 Jade Pasion. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var ItemList: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //return to view
    override func viewWillAppear(animated: Bool) {
        ItemList.reloadData()
    }
    
    //UITableViewDeligate
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        
        //if user swipes item from left to right, option to delete item is available
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            ListMgr.tasks.removeAtIndex(indexPath.row)
            ItemList.reloadData()
        }
    }
    
    //UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return ListMgr.tasks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        
        cell.textLabel?.text = ListMgr.tasks[indexPath.row].name
        cell.detailTextLabel!.text = ListMgr.tasks[indexPath.row].desc
        
        
        return cell
    }

}

