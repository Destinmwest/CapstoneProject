//
//  HowToViewController.swift
//  FinalProject
//
// A ViewController to give the user some instruction on how to use the app
//
//  Created by Destin West on 4/11/20.
//  Copyright © 2020 Destin West. All rights reserved.
//

import UIKit

class HowToViewController: UIViewController{
    //Storyboard UI
    @IBOutlet weak var howToTextView: UITextView!
    @IBOutlet weak var goHomeButton: UIButton!
    
    //loads the viewControllers views
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set animated gradient background
        view.setGradientBackground()
        
        //usage instructions for user
        howToTextView.text = """
        Pick A Card:
        -These cards and phrases are offered for your entertainment. Ruminate on them, or forget them immediately, take them as you will.
        
        Meditate:
        -This meditation is meant to prepare you for The Angel Game. It works to relax you while openning your perceptions to the Angels. That said, it can also be used as a short stand alone meditation for use in your daily life.
        
        Angels:
        -First, you need to think of a question. This question can be about anything in your life that you would like some insight on. However, there are some rules.
        \n\tRule 1:
        If you ask a "yes" or "no" question, you are asking for something outside of yourself to tell you what to do. In doing this, you surrender the essential element for leading a self-aware life, the gift of personal freedom and responsibility. Please do not ask "yes" or "no" questions, the Angels are not here to tell you what to do.
        \n\tRule 2:
        Ask questions in a way that will help the Angels assist you to expand beyond your current limits and/or to accept greater clarity. The Angels are loving, caring attendants, here to support you.
        \n\tRule 3:
        You are advised to take your time with this game in general, but most of all with formulating your question. The more clarity and intention you have with your question the greater the insight will be.
        \n\tExample:
        If a person were considering whether to quit her job or stay with it, she should not ask "should I quit my job?" This is a "yes" or "no" question and it surrenders her personal freedom. By rephrasing the question in a manner that seeks wisdom, the doors to insight are opened. So, she may ask, "I seek insight from the Angels regarding whether my job is serving the highest well-being for myself and my family." Or, "I seek insight from the Angels regarding my life's highest path, and whether my current job is the best support for myself and the community that surrounds me.
        
        
        -Second, you may begin to play the game. Click on the "Angels" button and you will ne taken to the Angel wheel. Spin the wheel in order to randomly select an Angel that will provide a response to your questions. You will then spin the Action wheel in order to select an Action that will compliment your Angels response. At this point you will receive your first response to your question. If you feel this response has given you satisfactory insight you may end the game here. If you feel as if you need more insight, you will go back to the Angel wheel to select another Angel. However, you will no longer spin the action wheel. Instead, you will simply choose to move around the wheel in a clockwise or counter clockwise manner. You may continue receiving responses until you've moved around the wheel and come to "Communicating: The 10 Steps." At this point, the game will end and you will be taken to the screen that walks you through this Action. This action is a big one and it is designed for deep, extended, and meaningful contemplation.
        
        
        I sincerely hope you enjoy this game and the many insights it has in store for you. As the original creator of this game would say, "keep it light."
        """
        
    }
}
