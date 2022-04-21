//
//  SecondViewController.swift
//  quizApp
//
//  Created by admin on 21/04/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    //ScoreLabel
    
    @IBOutlet var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printScore()
        // Do any additional setup after loading the view.
    }
    
    /*override func viewDidAppear(_ animated: Bool) {
        printScore()
    }*/
    
    func printScore(){
        print(points)
        scoreLabel.text=points.description
        
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        scoreLabel.text=points.description
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
