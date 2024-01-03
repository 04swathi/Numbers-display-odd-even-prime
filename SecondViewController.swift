
import UIKit


class SecondViewController: UITableViewController {
    var type = String()
    var arrElements = [Int]()
    var tblCount = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell2")
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if type == "Prime number" {
            arrElements = genPrimeNumbers()
            tableView.reloadData()
        }
        else if type == "Odd number" {
            arrElements = genOddNumbers()
            tableView.reloadData()
        }
        else if type == "Even number" {
            arrElements = genEvenNumbers()
            tableView.reloadData()
        }
        else{
            print("default")
        }
    }
    func genPrimeNumbers() -> [Int] {
        var num = [Int]()
        num.append(1)
        for i in 2..<100 {
            if num.count < tblCount {
                var prime = true
                for j in 2...i {
                    if i % j == 0 && i != j {
                        prime = false
                        break
                    }
                }
                if prime {
                    num.append(i)
                } else {
                    continue
                }
            } else {
                break
            }
        }
        return num
    }
    func genOddNumbers() -> [Int] {
        var num = [Int]()
        for i in 1..<100 {
            if num.count < tblCount {
                if i % 2 != 0 {
                    num.append(i)
                }
            } else {
                break
            }
        }
        return num
    }
    func genEvenNumbers() -> [Int] {
        var num = [Int]()
        for i in 1..<100 {
            if num.count < tblCount {
                if i % 2 == 0 {
                    num.append(i)
                }
            } else {
                break
            }
        }
        return num
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tblCount
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
        if !arrElements.isEmpty {
            cell2.textLabel?.text = String(describing: arrElements[indexPath.row])
        }
        return cell2
    }
    
}
