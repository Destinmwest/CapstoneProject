//
//  ActionArray.swift
//  FinalProject
//
//  A struct containing arrays with the information for the seven actions
//  and several functions to facilitate their usage.
//
//  Created by Destin West on 3/24/20.
//  Copyright © 2020 Destin West. All rights reserved.
//

struct ActionArray {
    
    let actionArray = [
        //0
        Action(
                number: 0,
                name: "Awareness to Change",
                description: "If one is not aware that change is needed, no change can conciously be created. Awareness that change is needed is a must, however, it is not necessary to know exactly what change is needed.",
                actions: ["by being aware that a change is needed.",
                          "become aware, without awareness, no change can conciously be created.",
                          "yet it is not necessary to know exactly what change is needed.",
                          "do realize change is not the answer.",
                          "by making changes in small steps.",
                          "be in gratitude for all the recent changes in your life.",
                          "by understanding that you have changed.",
                          "by acknowleding that the other person or place had changed."]),
        //1
        Action(
                number: 2,
                name: "Manifested State Reinforced",
                description: "This refers to creating one's beliefs. Two truisms speak to this; First, most people think we believe our experiences. This is not true, we experience what we believe. Second, we are what we think.",
                actions: ["by creating you beliefs.",
                          "resulting in experiencing what you believe by what you think.",
                          "as results happen by changing your beliefs.",
                          "by things staying the same with no change in thought.",
                          "your energy follows thought.",
                          "by repeating your actions.",
                          "by not repeating your actions.",
                          "by improving your language to support what it is you inted to reinforce.",
                          "by changing what you tell your friends/family.",
                          "and share only with those that reinforce your healthy manifestations."]),
        //2
        Action(
                number: 1,
                name: "Angels Reinforce: Positively or Negatively",
                description: "Angels reinforce one's beliefs, whether the beliefs are positive or negative. The Angels support beliefs without judgement.",
                actions: ["and you will be supported by the Angels.",
                          "by knowing your positive statements are reinforced by the Angels.",
                          "keeping in mind that you negative thoughts create negative outcomes.",
                          "therefore reinforce your desires with positive actions and statements.",
                          "by cancelling your negative thoughts to supportive statements.",
                          "by requesting that others assist you in supportive steps.",
                          "by taking the time to focus."]),
        //3
        Action(
                number: 5,
                name: "Thoughts and Ideas",
                description: "\"It is a fact that we have the power to create thoughts that underlie the diversity of content that we see, and not vice versa. It seems, at first, that to state that thought is the vehicle which creates reality is an oversimplification. Nothing can be simpler, and this is precisely true. A difference in thought is a difference in reality... (Mills and Suarez, 1982.)",
                actions: ["so come up with an idea to explore.",
                          "by giving thought to new ideas.",
                          "your thoughts are your vehicle to change.",
                          "changing your thoughts to change your situation.",
                          "by realizing that a difference in thought is a difference in reality.",
                          "your ideas are only ideas until you give them energy.",
                          "by infusing your situation with new ideas.",
                          "by brainstorming to shift the current situation.",
                          "by asking another for their ideas."]),
        //4
        Action(
                number: 3,
                name: "Newly Manifested State",
                description: "This refers to a change that has occured. As human beings, we are blessed among species in that we can change our perceptions, interpretations, and expectations of life. Thereby transforming our reality... (Chopra & Simon, 2001.)",
                actions: ["a change has already occured.",
                          "as a result of changing your perceptions.",
                          "by taking new action steps.",
                          "to create a different physical body.",
                          "to create a different reality.",
                          "by changing your interpretations.",
                          "with your expectations of life.",
                          "resulting in a transformation of reality.",
                          "with divine intervention by way of your request.",
                          "by asking, know you have received.",
                          "knowing a change has occured by way of your gratitude."]),
        //5
        Action(
                number: 4,
                name: "Angels Respond: Synchronicities, Serendipity and Coincidence",
                description: "This refers to Angels communicating through actions as well as through intuition. Angels, with their access to levity, will cause happy coincidences or agreements in time to aid the smooth running of daily life. Angels assist in organizing meaningful meetings and cause one to be in the right place at the right time (White, 1997.)",
                actions: ["by means of intuition.",
                          "by listening to your intuition.",
                          "by listening to the intuition of others.",
                          "by observing the actions around you.",
                          "by trusting coincidences are help from the Angels.",
                          "by knowing meaningful meetings will naturally occur.",
                          "so you'll be in the right place at the right time.",
                          "and the Angels will arrange agreements to assist in your daily life running smoothly.",
                          "in a light and happy manner.",
                          "become assured the person in mind knows you too."]),
        //6
        Action(
                number: 6,
                name: "Communicating: The 10 Steps",
                description: "Your turn ends here. Click the button below to be taken to a new page describing how to work through the 10 steps of communicating outside of the app. You can access these steps at anytime through the help menu on the front page of the app.",
                actions: [""])
    
    ]
    
    //returns the number of the action
    //used for cycling through actions after initial selection
    func getActionNumber(_ randomNumber: Int) -> Int {
        let number = randomNumber
        
        switch number {
        case 9, 15:
            return actionArray[1].number
        case 10, 16:
            return actionArray[2].number
        case 11, 17:
            return actionArray[0].number
        case 12, 18:
            return actionArray[6].number
        case 13, 19:
            return actionArray[3].number
        case 14, 21:
            return actionArray[4].number
        case 20:
            return actionArray[5].number
        
        default:
            return 0
        }
    }
    
    //returns the case (randomNumber associated with the action) of the action
    //used for determining the next action number to move to
    func getActionCase(_ actionNumber: Int) -> Int {
        let number = actionNumber
        
        switch number {
        case 0:
            return 11
        case 1:
            return 10
        case 2:
            return 9
        case 3:
            return 14
        case 4:
            return 20
        case 5:
            return 13
        case 6:
            return 12
        
        default:
            return 0
        }
    }
    
    //returns the name of the action
    //used to inform the user
    func getActionName(_ randomNumber: Int) -> String {
        let number = randomNumber
        
        switch number {
        case 9, 15:
            return actionArray[1].name
        case 10, 16:
            return actionArray[2].name
        case 11, 17:
            return actionArray[0].name
        case 12, 18:
            return actionArray[6].name
        case 13, 19:
            return actionArray[3].name
        case 14, 21:
            return actionArray[4].name
        case 20:
            return actionArray[5].name
        
        default:
            return "Something went wrong, spin again."
        }
    }
    
    //returns the description of the action
    //used to inform the user
    func getActionDescription(_ randomNumber: Int) -> String {
        let number = randomNumber
        
        switch number {
        case 9, 15:
            return actionArray[1].description
        case 10, 16:
            return actionArray[2].description
        case 11, 17:
            return actionArray[0].description
        case 12, 18:
            return actionArray[6].description
        case 13, 19:
            return actionArray[3].description
        case 14, 21:
            return actionArray[4].description
        case 20:
            return actionArray[5].description
        
        default:
            return "Something went wrong, spin again."
        }
    }
    
    //returns a random action from the arrays in the action objects
    //the 2nd part of the sentence of the Angels response to the user
    func getAction(_ randomNumber: Int) -> String {
        let number = randomNumber
        
        switch number {
        case 9, 15:
            return actionArray[1].actions.randomElement()!
        case 10, 16:
            return actionArray[2].actions.randomElement()!
        case 11, 17:
            return actionArray[0].actions.randomElement()!
        case 12, 18:
            return actionArray[6].actions.randomElement()!
        case 13, 19:
            return actionArray[3].actions.randomElement()!
        case 14, 21:
            return actionArray[4].actions.randomElement()!
        case 20:
            return actionArray[5].actions.randomElement()!
        
        default:
            return "Something went wrong, spin again."
        }
    }
    
}
