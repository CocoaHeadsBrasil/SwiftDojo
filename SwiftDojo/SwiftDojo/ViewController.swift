//
//  ViewController.swift
//  SwiftDojo
//
//  Created by Tales Pinheiro De Andrade on 14/06/14.
//  Copyright (c) 2014 Tales Pinheiro De Andrade. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, NewAlbumProtocol {
    
    var dataSource: NSMutableArray = NSMutableArray();
    let CellIdenttifier = "Identifier"
    
    func newAlbumAdded(artistName: String, albumName: String, picture:UIImage) -> Bool {
        var dictIndex: Dictionary = ["artistName":artistName
            ,"albumName":albumName
            ,"picture":picture]
        dataSource.addObject(dictIndex)
        self.tableView.reloadData()
        return true
    }
    
    @IBAction func newAlbum(sender : AnyObject) {
    }
    func loadArray() {
        var dictIndex: Dictionary = ["artistName":"David Bowie"
        ,"albumName":"Zigg star dusty"
        ,"picture":UIImage(named: "ziggy_stardust_style_on_concert")]
        dataSource.addObject(dictIndex)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadArray()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int  {
        return dataSource.count
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!  {
        let cell = tableView.dequeueReusableCellWithIdentifier(CellIdenttifier) as VinilDataCellTableViewCell
        
        var vinil = dataSource[indexPath.row] as NSDictionary
        
        cell.artistLabel.text = vinil["artistName"] as String
        cell.albumLabel.text = vinil["albumName"] as String
        cell.pictureImageView.image = vinil["picture"] as UIImage
        
        return cell
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if (segue.identifier == "DetailSegue") {
            var indexPath = self.tableView.indexPathForCell(sender as UITableViewCell)
            var vinil = dataSource[indexPath.row] as Dictionary<String, NSObject>
            var detailViewController = segue.destinationViewController as DetailViewController
            detailViewController.vinil = vinil
        } else if(segue.identifier == "newSegue") {
            var newAlbum = segue.destinationViewController as NewAlbumViewController
            newAlbum.sender = self
        }
    }
}

/*
"artistName", "albumName", "picture"
*/


