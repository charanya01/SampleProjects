//
//  ViewController.swift
//  quizApp
//
//  Created by admin on 21/04/22.
//

import UIKit
var points=0
class ViewController: UIViewController {
    
    let questions=["Which command is used to turn the switch on?","While defining a function we use the keyword:","The IDE Used In Swift Is","To Create Mutable Object __ Is Used","Which Of The Following Is Incorrect Data Type In SWIFT ?"]
    let answers=[["toddleSwitch()","toggle()","activateSwitch()"],["func","FUNC","Func"],["Xcode","Swiftc","Ld"],["Var","Let","None"],["Char","UInt","Optional"]]
    //Variables
    var currentQuestion=0
    var rightAnswerPlacement:UInt32=0
    //Label
    @IBOutlet var lbl: UILabel!
    
    //Button
    
    @IBAction func action(_ sender: AnyObject)
    {
        if(sender.tag==Int(rightAnswerPlacement))
        {
            print("RIGHT!")
            points+=1
        }
        else{
            print("WRONG!")
        }
        
        if(currentQuestion != questions.count){
            newQuestion()
        }
        else{
            self.performSegue(withIdentifier: "showScore", sender: self)
        }
        
    }
    override func viewDidAppear(_ animated: Bool) {
        newQuestion()
    }
    
    //Func to display ques
    func newQuestion(){
        lbl.text=questions[currentQuestion]
        
        rightAnswerPlacement=arc4random_uniform(3)+1
        
        //Create button
        
        var button:UIButton=UIButton()
        var x=1
        for i in 1...3{
            //create a button
            button=view.viewWithTag(i) as! UIButton
            
            if(i==Int(rightAnswerPlacement))
            {
                button.setTitle(answers[currentQuestion][0], for: .normal)
            }
            else{
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x=2
            }
           
        }
        currentQuestion+=1
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

