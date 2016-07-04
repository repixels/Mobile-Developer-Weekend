//
//  DayThreeTableViewController.swift
//  Mobile Developer Weekend
//
//  Created by RE Pixels on 6/9/16.
//  Copyright © 2016 ITI. All rights reserved.
//

import UIKit
import AlamofireNetworkActivityIndicator

class DayThreeTableViewController: UITableViewController {

    var agendas: [Agenda]?
    var sessions = [Session]()
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let userEmail = defaults.objectForKey("userEmail") as! String
        
        WebserviceManager.getUserSessions(URLs.getSessionsURL(userEmail)) { (agendas, code) in
            let returnedCode = code!
            
            switch returnedCode
            {
            case "view.success":
                self.agendas = agendas!
                for index in 0...(agendas?.count)!-1
                {
                    if agendas![index].date?.doubleValue == 1460757600000
                    {
                        let sessionsArray = Array(agendas![index].sessions!) as! [Session]
                        
                        for object in sessionsArray
                        {
                            self.sessions.append(object)
                        }
                    }
                }
                self.tableView.reloadData()
                break;
            default:
                print(returnedCode)
                break;
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (sessions.count)
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("sessionCell", forIndexPath: indexPath)
        
        // Configure the cell...
        cell.textLabel?.sizeToFit()
        cell.textLabel?.attributedText = HtmlRendering.renderHtml(self.sessions[indexPath.row].name!)
        cell.detailTextLabel?.text = self.sessions[indexPath.row].location
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
