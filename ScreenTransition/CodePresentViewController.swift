//
//  CodePresentViewController.swift
//  ScreenTransition
//
//  Created by 이동준 on 2022/05/02.
//

import UIKit

class CodePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
