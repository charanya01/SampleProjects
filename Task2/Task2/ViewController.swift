//
//  ViewController.swift
//  Task2
//
//  Created by admin on 19/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMessage(sender: UIButton) {
        
        let emojiDictionary = ["🤣": "Lol..", "🤫": "Shush..", "😒": "Ughh..", "🤓": "Nerd..", "😎": "Cool.."]
        let selectedButton = sender
        if let wordToLookup = selectedButton.titleLabel?.text {
            let meaning = emojiDictionary[wordToLookup]
            let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
        
    }
}


