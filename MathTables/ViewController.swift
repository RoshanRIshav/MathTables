//
//  ViewController.swift
//  MathTables
//
//  Created by Roshan Rishav on 5/10/16.
//  Copyright © 2016 Roshan Rishav. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    
    @IBOutlet weak var sliderVal: UISlider!
    
    
    @IBAction func slidermoved(sender: AnyObject) {
       
        tableview.reloadData()
    }
    @available(iOS 2.0, *)
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    
    
    return 20    
    }
    
    
    @available(iOS 2.0, *)
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
    
    
      let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
    
        let table = Int(sliderVal.value * 20)
        
        cell.textLabel?.text = String(table * (indexPath.row + 1))
 
    return cell
    }

    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

