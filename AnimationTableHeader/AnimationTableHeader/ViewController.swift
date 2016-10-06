//
//  ViewController.swift
//  AnimationTableHeader
//
//  Created by mac on 30/09/16.
//  Copyright © 2016 kloudrac.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UIScrollViewDelegate {
    

    @IBOutlet weak var headerHeight: NSLayoutConstraint!
    @IBOutlet weak var bottomLayout: NSLayoutConstraint!
    @IBOutlet weak var topLayout: NSLayoutConstraint!
    
    @IBOutlet weak var lbtHeight: NSLayoutConstraint!
    @IBOutlet weak var lbtWidth: NSLayoutConstraint!
    
    @IBOutlet weak var img1Height: NSLayoutConstraint!
    @IBOutlet weak var img1Width: NSLayoutConstraint!
   // @IBOutlet weak var img1Leading: NSLayoutConstraint!
    @IBOutlet weak var img1HorizontalSpace: NSLayoutConstraint!
    
   // @IBOutlet weak var img2Trailing: NSLayoutConstraint!
    @IBOutlet weak var img2Width: NSLayoutConstraint!
    @IBOutlet weak var img2Height: NSLayoutConstraint!
    @IBOutlet weak var img2HorizontalSpace: NSLayoutConstraint!
    
    @IBOutlet weak var tableHeader: UIView!
    @IBOutlet weak var tableView: UITableView!
     var fixed: Bool = true
  var limit = 48.0
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifire", forIndexPath: indexPath)
        
        return cell
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
       
        if tableView.contentOffset.y < bottomLayout.constant &&  headerHeight.constant < 120  {
            if tableView.frame.origin.y < 118 {
            bottomLayout.constant = bottomLayout.constant - 1.0
            headerHeight.constant = headerHeight.constant + 5.0
            
            img1Width.constant = img1Width.constant + 0.2
            img1Height.constant = img1Height.constant + 0.2
            img1HorizontalSpace.constant = img1HorizontalSpace.constant + 5.0
            
            img2Width.constant = img2Width.constant + 0.2
            img2Height.constant = img2Height.constant + 0.2
            img2HorizontalSpace.constant = img1HorizontalSpace.constant + 5.0
            
            lbtWidth.constant = lbtWidth.constant + 0.2
            lbtHeight.constant = lbtHeight.constant + 0.2
            }
            print("if \(headerHeight.constant)")
             print("if \(tableView.contentOffset.y)")
             print("if \(bottomLayout.constant)")
        } else if tableView.frame.origin.y > 66.0 {
            bottomLayout.constant = bottomLayout.constant + 1.0
            headerHeight.constant = headerHeight.constant - 5.0
            
            img1Width.constant = img1Width.constant - 0.2
            img1Height.constant = img1Height.constant - 0.2
            img1HorizontalSpace.constant = img1HorizontalSpace.constant - 5.0
            
            img2Width.constant = img2Width.constant - 0.2
            img2Height.constant = img2Height.constant - 0.2
            img2HorizontalSpace.constant = img1HorizontalSpace.constant - 5.0
            
            lbtWidth.constant = lbtWidth.constant - 0.2
            lbtHeight.constant = lbtHeight.constant - 0.2
            print("else \(headerHeight.constant)")
        }
        print("tableConentoffset is \(tableView.frame.origin.y)")
        tableHeader.sizeToFit()
    }
}
