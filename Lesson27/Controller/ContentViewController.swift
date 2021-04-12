import UIKit

class ContentViewController: UIViewController {

    @IBOutlet private var presentTextLabel: UILabel!
    @IBOutlet private var emojiLabel: UILabel!
    @IBOutlet private var switchPresentationWasViewed: UISwitch!
    @IBOutlet private var startUsing: UIButton!
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
        pageControl.numberOfPages = numberOfPage    //Важно сразу количество страниц, а потом текущую страницу
        pageControl.currentPage = currentPage
        
        switchPresentationWasViewed.isHidden = boolisOn
        startUsing.isHidden = boolisOn
//        skipLabel.isHidden = skipLabelOnOff
    }
    
    @IBAction private func switchPresentationWasViewedAction(_ sender: UISwitch) {
//        let userDefaults = UserDefaults.standard
//
//        switch sender.isOn {
//            case true: userDefaults.set(true, forKey: "presentationWasViewed")
//            case false: userDefaults.set(false, forKey: "presentationWasViewed")
//        }
    }
    
    @IBAction private func startUsingAction() {
        if switchPresentationWasViewed.isOn {
            let userDefaults = UserDefaults.standard
            userDefaults.set(true, forKey: "presentationWasViewed")
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func skupAction() {
    }
}
