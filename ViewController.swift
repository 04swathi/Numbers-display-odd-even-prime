
import UIKit

class ViewController: UIViewController {
   var array = ["Odd number","Even number","Prime number"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func didtapButtonOne(_ sender: UIButton) {
        let vc = MyTableViewController()
        vc.array = array
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

