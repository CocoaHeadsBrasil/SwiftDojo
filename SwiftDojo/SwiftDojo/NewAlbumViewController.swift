//
//  NewAlbumViewController.swift
//  SwiftDojo
//
//  Created by Tales Pinheiro De Andrade on 14/06/14.
//  Copyright (c) 2014 Tales Pinheiro De Andrade. All rights reserved.
//

import UIKit

protocol NewAlbumProtocol {
    func newAlbumAdded(artistName: String, albumName: String, picture:UIImage) -> Bool
}

class NewAlbumViewController: UIViewController {
    
    var sender: NewAlbumProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveNewAlbum(object: AnyObject) {
        if sender?.newAlbumAdded("Pink Floyd", albumName: "Dark side of the moon", picture: UIImage()) {
            self.navigationController.popViewControllerAnimated(true)
        }
    }
    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
