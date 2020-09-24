//
//  ViewController.swift
//  DemoDelegateClosure
//
//  Created by Tran Cong Hieu on 9/23/20.
//  Copyright © 2020 Tran Cong Hieu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtResult:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    class func create() -> ViewController2 {
    let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    return mainStoryboard.instantiateViewController(withIdentifier: "view2")
        as! ViewController2
    }
    
    @IBAction func btnNext(_ sender: Any) {
        let vc = ViewController.create()
        vc.modalPresentationStyle = .fullScreen
  // vc.delegate = self
       vc.closure = { (text) in
            self.txtResult.text = ("Text: \(text)")
        }
       present(vc, animated: true)
    }
    
}
extension ViewController:ScreenDelegate {
    func updateLabel(text:String){
        txtResult.text = "Text:\(text)"
    }

}
