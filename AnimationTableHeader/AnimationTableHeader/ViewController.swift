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
        return 5
        
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifire", forIndexPath: indexPath)
        
        return cell
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        

        if tableView.contentOffset.y < bottomLayout.constant &&  headerHeight.constant < 120  {
            bottomLayout.constant = bottomLayout.constant - 1.0
            headerHeight.constant = headerHeight.constant + 2.0
            
            //img1Leading.constant = img1Leading.constant - 0.5
            img1Width.constant = img1Width.constant + 0.2
            img1Height.constant = img1Height.constant + 0.2
            img1HorizontalSpace.constant = img1HorizontalSpace.constant + 1.5
            
            //img2Trailing.constant = img2Trailing.constant - 0.5
            img2Width.constant = img2Width.constant + 0.2
            img2Height.constant = img2Height.constant + 0.2
            img2HorizontalSpace.constant = img1HorizontalSpace.constant + 1.5
            
            lbtWidth.constant = lbtWidth.constant + 0.2
            lbtHeight.constant = lbtHeight.constant + 0.2
            print("tableConentoffset is \(tableView.contentOffset.y)")
            print("tableHeader height is \(headerHeight.constant)")
        print("bottomlayout is if  \( bottomLayout.constant)")
            
        } else if bottomLayout.constant < 70   && headerHeight.constant > 50 {
            bottomLayout.constant = bottomLayout.constant + 1.0
            headerHeight.constant = headerHeight.constant - 2.0
            
            //img1Leading.constant = img1Leading.constant + 0.5
            img1Width.constant = img1Width.constant - 0.2
            img1Height.constant = img1Height.constant - 0.2
            img1HorizontalSpace.constant = img1HorizontalSpace.constant - 1.5
            
            //img2Trailing.constant = img2Trailing.constant + 0.5
            img2Width.constant = img2Width.constant - 0.2
            img2Height.constant = img2Height.constant - 0.2
            img2HorizontalSpace.constant = img1HorizontalSpace.constant - 1.5
            
            lbtWidth.constant = lbtWidth.constant - 0.2
            lbtHeight.constant = lbtHeight.constant - 0.2
            
            print("tableConentoffset is \(tableView.contentOffset.y)")
            print("tableHeader height is \(headerHeight.constant)")
            print("bottom lyaout is else \(bottomLayout.constant)")
        }
        
        tableHeader.setNeedsLayout()
        tableHeader.layoutIfNeeded()
        tableView.setNeedsLayout()
        tableView.layoutIfNeeded()
         }
    
  

}
