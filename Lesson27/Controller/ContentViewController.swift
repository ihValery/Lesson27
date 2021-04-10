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
            newValue.font = UIFont.systemFont(ofSize: 30)
        }
    }
    @IBOutlet private var emojiLabel: UILabel! {
        willSet {
            newValue.font = UIFont.systemFont(ofSize: 200)
        }
    }
    @IBOutlet private var pageControl: UIPageControl!
    
    var presentText = ""
    var emoji = ""
    var currenrPage = 0
    var numberOfPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presentTextLabel.text = presentText
        emojiLabel.text = emoji
        pageControl.currentPage = currenrPage
        pageControl.numberOfPages = numberOfPage

    }
}
