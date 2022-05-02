//
//  ViewController.swift
//  ScreenTransition
//
//  Created by 이동준 on 2022/05/02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") else { return }
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") else { return }
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
}

