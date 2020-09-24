//
//  ViewController2.swift
//  DemoDelegateClosure
//
//  Created by Tran Cong Hieu on 9/23/20.
//  Copyright © 2020 Tran Cong Hieu. All rights reserved.
//

import UIKit
//delegate

protocol ScreenDelegate {
    func updateLabel(text:String)
    
}
class ViewController2: UIViewController,UITextFieldDelegate{
    
    @IBOutlet weak var textField:UITextField!
    
   //var delegate: ScreenDelegate?
    
  var closure: ((String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
         
    }
    
    @IBAction func btnDone(_ sender: Any) {
        //Delegate
     //delegate?.updateLabel(text: textField.text ?? "")
       
        closure?(textField.text ?? "")
         dismiss(animated: true, completion: nil)

        
        
            }
    

}
