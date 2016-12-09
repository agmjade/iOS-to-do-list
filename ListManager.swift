//
//  ListManager.swift
//  To_Do_App
//
//  Created by Jade Pasion on 11/10/15.
//  Copyright © 2015 Jade Pasion. All rights reserved.
//

import UIKit

var ListMgr: ListManager = ListManager()

struct task {
    var name = "No Name"
    var desc = "No Description"
}

class ListManager: NSObject {
    
    var tasks = [task]()
    
    func addTask(name: String, desc: String) {
        tasks.append(task(name: name, desc: desc))
    }

}
