//
//  ViewController.swift
//  Lesson27
//
//  Created by Валерий Игнатьев on 10.04.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var startPageLabel: UILabel! {
        willSet {
            newValue.text = "Стартовая страница"
            newValue.font = .systemFont(ofSize: 30)
            newValue.textColor = .white
        }
    }
    @IBOutlet private var startPresentationLabel: UIButton! {
        willSet {
            newValue.setTitle("Старт презентации", for: .normal)
            newValue.setTitleColor(.white, for: .normal)
            newValue.layer.cornerRadius = 13
            newValue.titleLabel?.font = .systemFont(ofSize: 30)
        }
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        startPresentation()
//    }
  
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        startPresentation()
//    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startPresentation()
    }
    
    @IBAction private func startPresentationAction() {
        
        let userDefauls = UserDefaults.standard
        userDefauls.set(false, forKey: "presentationWasViewed")
        startPresentation()
    }
    
    private func startPresentation() {
        
        let userDefaults = UserDefaults.standard
        let presentationWasViewed = userDefaults.bool(forKey: "presentationWasViewed")
        
        if presentationWasViewed == false {
            if let pageVC = storyboard?.instantiateViewController(withIdentifier: "PageViewController") as? PageViewController {
                present(pageVC, animated: true, completion: nil)
            }
        }
        
      
    }
}
