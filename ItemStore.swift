//
//  ItemStore.swift
//  HomeOwner2
//
//  Created by Student on 4/20/16.
//  Copyright © 2016 shp. All rights reserved.
//

import UIKit

class ItemStore {
    //Properties
    //crate an array of Items
    var allItems = [Item]()
    
    //Meathod
    func createItem() -> Item{
        let newItem = Item(random:true)
        allItems.append(newItem)
        return newItem
    }
    
    init(){
        for _ in 0..<5 {
            createItem()
        }
    }
    //create a new Item and add to Items array
    func createItems() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
        
    }
    
}
