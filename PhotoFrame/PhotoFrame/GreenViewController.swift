import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closedButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
