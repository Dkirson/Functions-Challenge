//
//  ViewController.swift
//  FunctionsChallenge
//
//  Created by Bob Roberts on 5/17/16.
//  Copyright (c) 2016 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextView!
    var output1 = ""
    var output2 = ""
    var output3 = ""
    var output4 = ""
    var output5 = ""
    var output6 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onSliderMoved(_ sender: UISlider) {
        let sliderValue:Int = (Int)(sender.value)

        switch sliderValue {
            case 1:
                /***************************************************
                * Start Your Code Here For MVP
                ***************************************************/
                
                displayMVP()
                
                /***************************************************
                * End Your Code Here For MVP
                ***************************************************/
                break
            case 2:
                //Uncomment the line below for Stretch #1
                output1 = returnAString()
                myTextView.text = output1
            case 3:
                //Uncomment the line below for Stretch #2
                output2 = createSentence(Language: "Swift")
                myTextView.text = output2
            case 4:
                //Uncomment the line below for Stretch #3
                output3 = createFruitLovingSentence(FruitOne:"apples", FruitTwo: "bananas")
                myTextView.text = output3
            case 5:
                //Uncomment the two lines below for Stretch #4
                let sentence = "Here is my sentence"
                output4 = "\(sentence), has \(countTheCharacters( Sentence: sentence)) characters"
                myTextView.text = output4
            case 6:
                //Uncomment the three lines below for Stretch #5
                let sentence = "Here is my sentence"
                let tuple = findVowelsConsonants(sentence: sentence)
                output5 = sentence + ", has:\n" + "Vowels:\(tuple.0) Consonants:\(tuple.1)"
                myTextView.text =  output5
            default:
                //Uncomment the three lines below for Stretch #6
                let sentence = "Here is my sentence"
                let tuple = findVowelsConsonantsPunctuation(Sentence: sentence)
                output6 = sentence + ", has:\n" + "Vowels:\(tuple.0) \nConsonants:\(tuple.1) \nPunctuation:\(tuple.2)"
                myTextView.text =  output6
        }
    }
    
    func displayMVP()
    {
        myTextView.text = "MVP Completed"
    }
    
    /***************************************************
     * Start Your Code Here For Stretch #1
     ***************************************************/
    func returnAString() -> String
    {
        return "Stretch #1 Complete"
    }
    /***************************************************
     * End Your Code Here For Stretch #1
     ***************************************************/
    
    /***************************************************
    * Start Your Code Here For Stretch #2
    ***************************************************/
 func createSentence(Language language:String) -> String
    {
        
        return "I love programming with " + language
        
    }

    /***************************************************
    * End Your Code Here For Stretch #2
    ***************************************************/

    /***************************************************
    * Start Your Code Here For Stretch #3
    ***************************************************/
    func createFruitLovingSentence(FruitOne fruitOne:String, FruitTwo fruitTwo:String) -> String
    {
        return "I love " + fruitOne + " and " + fruitTwo
    }
    /***************************************************
    * End Your Code Here For Stretch #3
    ***************************************************/
    
    /***************************************************
     * Start Your Code Here For Stretch #4
     ***************************************************/
    func countTheCharacters( Sentence sentence: String) -> Int
    {
        return sentence.characters.count
    }
    /***************************************************
     * End Your Code Here For Stretch #4
     ***************************************************/

    /***************************************************
    * Start Your Code Here For Stretch #5
    ***************************************************/
    func findVowelsConsonants(sentence:String) -> (Int,Int)
    {
        var vowels2 = 0, cosonants2 = 0
        for character in sentence.characters
        {
            switch <#value#> {
            case <#pattern#>:
                <#code#>
            default:
                <#code#>
            }
        }
    }
    
    /***************************************************
    * End Your Code Here For Stretch #5
    ***************************************************/

    /***************************************************
    * Start Your Code Here For Stretch #6
    ***************************************************/
    func findVowelsConsonantsPunctuation(Sentence sentence:String) -> (Int,Int,Int)
    {
        return (sentence.characters.Vowels, sentence.charcters.Constonants, sentence.characters.Punctuation)
    }
    /***************************************************
    * End Your Code Here For Stretch #6
    ***************************************************/
}

