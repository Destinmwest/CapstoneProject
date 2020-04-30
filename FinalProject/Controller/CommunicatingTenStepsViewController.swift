//
//  CommunicatingTenStepsViewController.swift
//  FinalProject
//
//  Special case Action
//
//  Created by Destin West on 4/11/20.
//  Copyright © 2020 Destin West. All rights reserved.
//

import UIKit

class CommunicatingTenStepsViewController: UIViewController {
    //Storyboard UI
    @IBOutlet weak var angelNameLabel: UILabel!
    @IBOutlet weak var angelDescriptionText: UITextView!
    @IBOutlet weak var tenStepsText: UITextView!
    @IBOutlet weak var goHomeButton: UIButton!
    @IBOutlet weak var finishedTenStepsButton: UIButton!
    
    //Angel object and number
    var angel = AngelArray()
    var angelRandomInt = Int()
    
    
    //loads the viewControllers views
       override func viewDidLoad() {
           super.viewDidLoad()
           
           //access custom setGradientBackground UIView extention
           view.setGradientBackground()
        
        //show angel and description
        angelNameLabel.text = angel.getAngelName(angelRandomInt)
        angelDescriptionText.text = "These are your angels characteristics, keep them in mind as you progress through the steps: \n" + angel.getAngelDescription(angelRandomInt)
        
        //set the text for users to read and complete action
        tenStepsText.text = """
        Step 1: Be Still/Centered
            \t-This means stilling one's body and emotions to enter a state of silence and centeredness.
            \t-One must relax physically, mentally, and emotionally, as much as possible. Relax the body beginning from the toes and moving toward the crown of the head.
            \t-This can be done by focusing on each part of the body; first tightening, and then relaxing as deeply as possible.
            \t-Continue through the body until the head and scalp are deeply relaxed.
            \t-To relax the mind, one must first address and empty the cares of the day.
            \t-Allow the thoughts and emotions that come to mind to float away.
            \t-There are several ways of accomplishing this. One may focus on the physical input to the mind. One may focus on the aural input to the mind. One may focus solely on their breath, slowly entering and exiting the body.
        
        \nStep 2: Affirm
            \t-Acknowledge the silence, from being still, being centered, and in the silence recognize and know the divinity withing.
            \t-You may further affirm by stating a mantra. A mantra is a phrase used over and over that affirms a truth for the individual. For example, \"I am open to the divine energy of Angels.\"
        
        \nStep 3: Call Upon the Light/Invoke Protection
            \t-To ask is to pray.
            \t-The Light is the most powerful emanation in all creation asd in a form of protection from all that is not in the highest well-being.
            \t-When one invokes the Light, one is connecting to tall that is divine.
            \t-This step is letting the universe know that you are making a call to the realms of Light.
            \t-This step is similar to calling your family of Light to a meeting. Although it is not necessary to know which family member is needed at this time.
            \t-The Light is also a form of protection from that which does not employ the light.
            \t-Sense the Light in and around you.
        
        \nStep 4: Align With the Vibrations of the Angels
            \t-Breath in the Light. Breathe in and out, long and slow.
            \t-Sense the Angels' presence. Feel what it feels like to be with the Angels.
            \t-This step is employed to raise one's energy level through visualization and resonance.
            \t-Visualize the Light filling, expanding, and surrounding your body. Visualize the Light is every cell of your body.
            \t-Visualize the Angel who is being called upon. See and/or feel all the Light-filled cells of your body as antennae that are sending and receiving Light in resonance with the Angels.
            \t-Feel your energy and light expand and build
        
        \nStep 5: Request/Ask
            \t-This is the step where you diliberately call upon a specific Angel to ask for assistance with your question or issue.
            \t-Remember to believe in asking as receiving.
        
        \nStep 6: Listen/Receive/Accept
            \t-This step is active passivity. You are not thinking or analyzing. You are still, centered, open, and receiving.
            \t-Receiving and accepting communication from the Angels is passive detection of thoughts.
            \t-This step is not used for concentrating on receiving.
            \t-This step is simply receiving with openness, accepting that which has been received.
            \t-Again, remember, believe in asking as receiving.
            \t-Paying attention to what your body is telling you via your senses may assist in your receiving.
        
        \nStep 7: Grounding
            \t-To ground is to set/make firm your centeredness via your senses.
            \t-Sense the heightened awareness of your surroundings.
            \t-Feel the seat beneath you. Wiggle your fingers and toes. Press your palms firmly together with your thumbs at your heart and your fingers pointing up. Sip water. Hear the sounds and smell the fragrances of the space you are in. See the beauty in and around you.
            \t-Being grounded is a harmonizing of your multi-dimensions; physical, emotional, mental, and spiritual. Feel the stabilization of all of your energies. Feel alert, connected, protected, relaxed and receptive.
        
        \nStep 8: Give Gratitude
            \t-This step is based on the fact that our existence is a gift from the Universe.
            \t-To be in gratitude is to develop all-embracing love which is needed to attain higher knowledge and greater awareness.
            \t-Be grateful and trust that the Angels are with you.
            \t-Be grateful that assistance has been delivered upon request.
            \t-Be grateful for what you have received from your Angels.
        
        \nStep 9: Respond/Act
            \t-Be in the moment of response. Feel the promptings.
            \t-Act upon what you have received.
            \t-Acting upon what you have received allows you to shift conciousness. And allows you to put your new awareness into action and assists you in your growth and on your spiritual path.
        
        \nStep 10: Awareness/Shift
            \t-Awareness is to know, accept, and respond that you have communicated with the Angels. A shift occurs in your concious awareness of your relationship with the Angels. Your awareness and shift has you walking and talking the Light and Love of what you have received, and have become aware of, in your communication with the Angels.
        \n\n\n\n
        """
       
       }
    
    //passing data between ViewControllers
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //if the segue used is going to the ViewController
        //after the steps are finished, pass the boolean as false
        if segue.identifier == "goHomeFinishedSteps" {
            let viewController = segue.destination as! ViewController
            viewController.actionCommunicating = false
        }
        //if the segue used is going to the ViewController
        //and the steps are not finished, pass the boolean as true
        if segue.identifier == "goHome" {
            let viewController = segue.destination as! ViewController
            viewController.actionCommunicating = true
            viewController.angelRandomInt = self.angelRandomInt
 
        }
    }
}
