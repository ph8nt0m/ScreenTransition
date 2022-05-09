//
//  CodePresentViewController.swift
//  ScreenTransition
//
//  Created by 이동준 on 2022/05/02.
//

import UIKit

protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    weak var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = name {
            self.nameLabel.text = name
        }
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "Gunter")
        self.presentingViewController?.dismiss(animated: true)
    }
    
}
