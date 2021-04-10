//
//  PageViewController.swift
//  Lesson27
//
//  Created by Валерий Игнатьев on 10.04.21.
//

import UIKit

class PageViewController: UIPageViewController {

    private let presentText = ["Хочешь покидать мячик? Но одному скучно?",
                       "Все твои знакомые сидят в инстаграмме и танках?",
                       "Все что они знают о мячах - \"Они круглые\"",
                       "Найди себе партнера для любой игры!"]
    
    private let emojiCollection = ["🏈", "📱", "🏀", "🏸"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        
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
        ContentVC.numberOfPage = presentText.count
        ContentVC.currentPage = index
        ContentVC.boolisOn = index + 1 == presentText.count ? false : true
        ContentVC.skipLabelOnOff = index + 1 == presentText.count ? true : false

        return ContentVC
    }
}

extension PageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        var currentNumberPage = (viewController as! ContentViewController).currentPage
        currentNumberPage -= 1
        return showViewControllerAtIndex(currentNumberPage)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        var currentNumberPage = (viewController as! ContentViewController).currentPage
        currentNumberPage += 1
        return showViewControllerAtIndex(currentNumberPage)
    }
}
