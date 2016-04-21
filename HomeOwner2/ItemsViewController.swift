//
//  ItemsViewController.swift
//  HomeOwner2
//
//  Created by Student on 4/21/16.
//  Copyright © 2016 shp. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController {
    //Properties
    var itemStore: ItemStore!
    //let ItemStore = ItemStore()
    
    
    //Meathods
    override func viewDidLoad() {
        super.viewDidLoad()
        // let statusBarHeight =
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection seciton: Int) -> Int{
        return itemStore.allItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)->UITableViewCell{
        //Create an instance of UITableViewCell, withdefaultappearance
        let cell = UITableViewCell(style:.Value1, reuseIdentifier: "UITableViewCell")
        //Setthetextonthecellwiththedescriptionoftheitem
        //that is at the nth index of items, where n = rowthiscell
        //will appear in on the tableview
        
        let item = itemStore.allItems[indexPath.row]
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text="$\(item.valueInDollars)"
        return cell
    }
}

