//
//  ViewController.swift
//  Lesson27
//
//  Created by Валерий Игнатьев on 10.04.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startPresentation()
    }
    
    func startPresentation() {
        if let pageVC = storyboard?.instantiateViewController(withIdentifier: "PageViewController") as? PageViewController {
            present(pageVC, animated: true, completion: nil)
        }
    }
}
