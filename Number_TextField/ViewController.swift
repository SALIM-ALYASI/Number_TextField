//
//  ViewController.swift
//  Number_TextField
//
//  Created by ALYASI on 2/4/20.
//  Copyright © 2020 ALYASI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

        @IBOutlet weak var textField: DRHTextFieldWithCharacterCount?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            textField?.drhDelegate = self
            // Do any additional setup after loading the view, typically from a nib.
        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }

    }

    extension ViewController: DRHTextFieldWithCharacterCountDelegate {
        func didEndEditing() {
            print("end editing")
        }
        func didBeginEditing() {
            print(" 1")
        }
        func didReachCharacterLimit(_ reach: Bool) {
            if reach {
                print("limit reached")
            } else {
                print("have more chars to go")
            }
        }
    }
