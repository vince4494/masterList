//
//  beerDescription.swift
//  Assignment 8
//
//  Created by Vince Zipparro on 3/1/16.
//  Copyright © 2016 Vince Zipparro. All rights reserved.
//

import Foundation
import UIKit

class beerDesciption: UIViewController
{
    
    @IBOutlet var descriptionView: UITextView!
    @IBOutlet var imageView: UIImageView!


    
    var beerDescription = String()
  
   
    
    override func viewDidLoad()
    {
        
                
        descriptionView.text = beerDescription
        
        
    }
    
    
}
