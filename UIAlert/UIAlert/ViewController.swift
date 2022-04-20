//
//  ViewController.swift
//  UIAlert
//
//  Created by admin on 20/04/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet var myTableView: UITableView!
    
    
    var cricketer:[String]=["Dhoni","Kohli","Rayudu","Ashwin","Raina"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cricketer.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell?=myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell?.textLabel?.text=cricketer[indexPath.row]
        return cell!
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertTitle="Favorite Cricketer"
        let message="You have selected \(cricketer[indexPath.row])"
        let alert=UIAlertController(title: alertTitle, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        present(alert,animated:true,completion: nil)
        
        myTableView.deselectRow(at: indexPath, animated: true)
    }


}

