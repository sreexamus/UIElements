//
//  ViewController.swift
//  XibExm
//
//  Created by sreekanth reddy iragam reddy on 2/6/17.
//  Copyright © 2017 com.sree.objc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        if let myView=Bundle.main.loadNibNamed("ReusableView", owner: self, options: nil)?.first as? ReusableView
        {
            myView.firstBtn.setTitle("First", for: .normal)
            myView.secondButton.setTitle("Turumu", for: .focused)
            myView.frame = CGRect(x: 0, y: 50, width: self.view.frame.width, height: 200)
            self.view.addSubview(myView)
            
           // myView.frame.origin.y=500
            
            //self.view.addSubview(myView)
            
            
        }
        
        
        if let myView1=Bundle.main.loadNibNamed("ReusableView", owner: self, options: nil)?.first as? ReusableView
        {
            myView1.firstBtn.setTitle("Second", for: .normal)
            myView1.secondButton.setTitle("Turumu", for: .focused)
            myView1.frame = CGRect(x: 0, y: 300, width: self.view.frame.width, height: 200)
            self.view.addSubview(myView1)
            
            
            
            //self.view.addSubview(myView)
            
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

