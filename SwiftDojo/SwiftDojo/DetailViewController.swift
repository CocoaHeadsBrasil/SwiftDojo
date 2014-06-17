//
//  DetailViewController.swift
//  SwiftDojo
//
//  Created by Tales Pinheiro De Andrade on 14/06/14.
//  Copyright (c) 2014 Tales Pinheiro De Andrade. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var albumNameLabel : UILabel
    @IBOutlet var artistNameLabel : UILabel
    @IBOutlet var pictureImageView : UIImageView
    var vinil : Dictionary<String, NSObject> = [:]
    /*
    "artistName", "albumName", "picture"
    */
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.edgesForExtendedLayout = .None
        
        artistNameLabel.text = vinil["artistName"] as NSString
        albumNameLabel.text = vinil["albumName"] as NSString
        pictureImageView.image = vinil["picture"] as UIImage
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
