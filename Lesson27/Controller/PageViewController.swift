//
//  PageViewController.swift
//  Lesson27
//
//  Created by Валерий Игнатьев on 10.04.21.
//

import UIKit

class PageViewController: UIPageViewController {

    let presentText = ["Хочешь покидать мячик? Но одному скучно?",
                       "456",
                       "789",
                       "012"]
    
    let emojiCollection = ["🏀", "🥏", "🏈", "🏸"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let contentVC = showViewControllerAtIndex(0) {
            setViewControllers([contentVC], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func showViewControllerAtIndex(_ index: Int) -> ContentViewController? {
        
        guard index >= 0 else { return nil }
        guard index < presentText.count else { return nil }
        
        guard let ContentVC = storyboard?.instantiateViewController(withIdentifier: "ContentViewController") as? ContentViewController else { return nil }
        
        ContentVC.presentText = presentText[index]
        ContentVC.emoji = emojiCollection[index]
        ContentVC.currenrPage = index
        ContentVC.numberOfPage = presentText.count
        
        return ContentVC
    }
}
