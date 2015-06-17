//
//  PinBoardViewController.swift
//  StudentAanHuis
//
//  Created by Roy Buitenhuis on 13-06-15.
//  Copyright (c) 2015 Roy Buitenhuis. All rights reserved.
//

import UIKit

class PinBoardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var loginTableView: UITableView!
    
 

    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "LoginHeaderTableViewCell")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Inloggen"
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if(tableView == self.loginTableView){
            var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("UsernameTextFieldCell", forIndexPath: indexPath) as! UITableViewCell
            return cell
        }
        return UITableViewCell();
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected cell #\(indexPath.row)!")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
}
