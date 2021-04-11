import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var startPageLabel: UILabel!
    @IBOutlet private var startPresentationLabel: UIButton!
    
    var notShowAgainInThisScene = false
    
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
