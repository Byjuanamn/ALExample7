//
//  ViewController.swift
//  ALExample7
//
//  Created by Juan Antonio Martin Noguera on 27/06/16.
//  Copyright © 2016 Com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchLabel = UILabel()
        searchLabel.translatesAutoresizingMaskIntoConstraints = false
        searchLabel.text = "Search:"
        view.addSubview(searchLabel)
        
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        view.addSubview(textField)
        
        let lookupButton = UIButton()
        lookupButton.translatesAutoresizingMaskIntoConstraints = false
        lookupButton.setTitle("Lookup!", for: UIControlState())
        lookupButton.setTitleColor(UIColor.black, for: UIControlState())
        lookupButton.setTitleColor(UIColor.blue, for: .highlighted)
        view.addSubview(lookupButton)
        
        NSLayoutConstraint(item: searchLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leadingMargin, multiplier: 1.0, constant: 0.0).isActive = true
        NSLayoutConstraint(item: searchLabel, attribute: .lastBaseline, relatedBy: .equal, toItem: textField, attribute: .lastBaseline, multiplier: 1.0, constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: view, attribute: .trailingMargin, relatedBy: .equal, toItem: textField, attribute: .trailing, multiplier: 1.0, constant: 0.0).isActive = true
        NSLayoutConstraint(item: textField, attribute: .top, relatedBy: .equal, toItem: topLayoutGuide, attribute: .bottom, multiplier: 1.0, constant: 20.0).isActive = true
        NSLayoutConstraint(item: textField, attribute: .leading, relatedBy: .equal, toItem: searchLabel, attribute: .trailing, multiplier: 1.0, constant: 8.0).isActive = true
        
        NSLayoutConstraint(item: lookupButton, attribute: .top, relatedBy: .equal, toItem: textField, attribute: .bottom, multiplier: 1.0, constant: 8.0).isActive = true
        NSLayoutConstraint(item: lookupButton, attribute: .trailing, relatedBy: .equal, toItem: textField, attribute: .trailing, multiplier: 1.0, constant: 0.0).isActive = true
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

