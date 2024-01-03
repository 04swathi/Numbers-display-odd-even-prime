
import UIKit

class MyTableViewController: UITableViewController {
    var array = ["Odd number","Even number","Prime number"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
         cell.textLabel?.text = array[indexPath.row]
        return cell
       }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let vc = SecondViewController()
        vc.type = array[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    }



