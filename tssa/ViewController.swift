//
//  ViewController.swift
//  tssa
//
//  Created by Erick Hernandez on 2016-03-04.
//  Copyright © 2016 Erick Hernandez. All rights reserved.
//

import UIKit






class ViewController: UIViewController {

    //label to print questions to screen
    @IBOutlet weak var wizardQuestionLabel: UILabel!
    
    //for any sub heading regarding current question label
    @IBOutlet weak var wizardQuestionSecondaryLabel: UILabel!
    
    //control indicator for pages (dots)
    @IBOutlet weak var pageControlIndicator: UIPageControl!
    
    //continue button on wizard screen
    @IBOutlet weak var wizardContinueButton: UIButton!
    
    //continue button on wizard screen action
    @IBAction func wizardContinueButton(sender: UIButton) {
        //call next question function
        nextQuestion()
    }
    
    let wizardQuestions = wizardQuestionModel()
    
    //counter to loop through the questions
    var questionCounter:Int = 1
    
   
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      
       //initially display first question
        wizardQuestionLabel.text = wizardQuestions.question[0][0]
            
       //this label is initially set with first question comment
        wizardQuestionSecondaryLabel.text = wizardQuestions.question[0][1]
           
       
            
          
        self.view.backgroundColor = UIColor(red: 218/255, green: 61/255, blue: 80/255, alpha: 1.0) /* #da3d50 */
            
            //styie for continue button
            wizardContinueButton.backgroundColor = UIColor.clearColor()
            wizardContinueButton.layer.cornerRadius = 30
            wizardContinueButton.layer.borderWidth = 1
            wizardContinueButton.layer.borderColor = UIColor.whiteColor().CGColor
        

    }
 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
   
    func nextQuestion (){
         //this function reveals next question for setup wizard
        
        //return back to first question if last question has been reached
        if questionCounter >= wizardQuestions.question.count {
            //*todo - if last question is reached possibly call next screen
            questionCounter = 0
        }
        
        
        //display sub question/comment
        if wizardQuestions.question[questionCounter].count > 1 {
          wizardQuestionSecondaryLabel.text = (wizardQuestions.question[questionCounter][1])
        } else {
            // if no subquestion or comment exists display empty string
            wizardQuestionSecondaryLabel.text = ""
        }

       
        //loop through questions
        wizardQuestionLabel.text = wizardQuestions.question[questionCounter][0]
        //increase counter for next question
        questionCounter++
        
    }
    //<-----end of nextQuestion function------>
   


}

