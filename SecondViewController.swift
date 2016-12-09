//
//  SecondViewController.swift
//  To_Do_App
//
//  Created by Jade Pasion on 11/10/15.
//  Copyright © 2015 Jade Pasion. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var NewItem: UITextField!
    @IBOutlet weak var ItemDesc: UITextField!
    @IBAction func AddButton(sender: AnyObject) {
        ListMgr.addTask(NewItem.text!, desc: ItemDesc.text!)
        self.view.endEditing(true)
        NewItem.text = ""
        ItemDesc.text = ""
        self.tabBarController?.selectedIndex = 0;
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //close keyboard when touched outside of text field
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //UITextFieldDeligate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }

}

