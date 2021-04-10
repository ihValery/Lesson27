//
//  ContentViewController.swift
//  Lesson27
//
//  Created by Валерий Игнатьев on 10.04.21.
//

import UIKit

class ContentViewController: UIViewController {

    @IBOutlet private var presentTextLabel: UILabel! {
        willSet {
            newValue.numberOfLines = 0
            newValue.font = .systemFont(ofSize: 30)
        }
    }
    @IBOutlet private var emojiLabel: UILabel! {
        willSet {
            newValue.font = .systemFont(ofSize: 200)
        }
    }
    @IBOutlet private var switchPresentationWasViewed: UISwitch! {
        willSet {
            newValue.isOn = false
            newValue.onTintColor = .gray
        }
    }
    @IBOutlet private var startUsing: UIButton! {
        willSet {
            newValue.setTitle("Старт", for: .normal)
            newValue.setTitleColor(.white, for: .normal)
            newValue.titleLabel?.font = .systemFont(ofSize: 30)
        }
    }
    @IBOutlet private var pageControl: UIPageControl!
    @IBOutlet private var skipLabel: UIButton!
    
    var presentText = ""
    var emoji = ""
    var currentPage = 0
    var numberOfPage = 0
    var boolisOn = false
    var skipLabelOnOff = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        presentTextLabel.text = presentText
        emojiLabel.text = emoji
        //Важно сразу количество страниц, потом текущую страницу
        pageControl.numberOfPages = numberOfPage
        pageControl.currentPage = currentPage
        switchPresentationWasViewed.isHidden = boolisOn
        startUsing.isHidden = boolisOn
        skipLabel.isHidden = skipLabelOnOff
    }
    
    @IBAction private func switchPresentationWasViewedAction(_ sender: UISwitch) {
        let userDefaults = UserDefaults.standard
        
        switch sender.isOn {
            case true: userDefaults.set(true, forKey: "presentationWasViewed")
            case false: userDefaults.set(false, forKey: "presentationWasViewed")
        }
    }
    
    @IBAction private func startUsingAction() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func skupAction() {
//        guard let pageVC = storyboard?.instantiateViewController(withIdentifier: "PageViewController") as? PageViewController else { return }
//        
//        pageVC.showViewControllerAtIndex(numberOfPage)
//        pageVC.
//        pageControl.currentPage = numberOfPage
    }
}
