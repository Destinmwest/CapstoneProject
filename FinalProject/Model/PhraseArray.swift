//
//  phraseArray.swift
//  FinalProject
//
//  An array of phrases to be presented in the PickACard popupView
//
//  Created by Destin West on 4/11/20.
//  Copyright © 2020 Destin West. All rights reserved.
//

struct phraseArray {
    
    let phraseArray = ["Letting you be you, and me be me is loving each other.",
                       "The important thing is this: To be able to at any moment sacrifice what we are for what we could become.",
                       "If you want your dreams to come true, wake up.",
                       "When you show up for life, life shows up for you.",
                       "He who is deceiving others deceives himself.",
                       "Are you making it up?",
                       "We all seek to be understood more than we seek to understand.",
                       "First, change what you are capable of changing within yourself.",
                       "It is not uncommon for people to spend their whole life waiting to start living.",
                       "A tame mind sacrifices the short therm for the long term.",
                       "Seek and ye shall find.",
                       "The degree to which you try to maintain the story about who you think you are is the degree to which you feel isolated from love.",
                       "Some people think that seeing is believing, this is not true, believing is seeing.",
                       "Knowing how to yield in strength.",
                       "Wherever you are, be there totally.",
                       "Life isn't about finding yourself. Life is about creating yourself.",
                       "Keep it light.",
                       "I have never let my schooling interfere with my education.",
                       "What I thought was unreal now, for me, seems to be more real than what I think to be real, which seems now to be unreal.",
                       "I know that you believe that you understood what you think I said, but I am not sure you realize that what you heard is not what I meant.",
                       "Life is like photography, you use the negative to develop.",
                       "All you get is your own reflection.",
                       "To get a second chance say, \"over my dead body,\" as often as possible.",
                       "Nearly die laughing.",
                       "Where do you see yourself in the next 3000 years?",
                       "Your word is law.",
                       "If you're looking to find the key to the Universe, I have some bad news and some good news. The bad new is there is no key to the Universe. The good news is it has been left unlocked.",
                       "Don't get even, get odd.",
                       "Love... the whole of existence.",
                       "Minds are like parachutes, they work best when they are open.",
                       "Blessed are the flexible.",
                       "Remember, to truly understand ultimate reality you have to be out of your mind.",
                       "You can't depend on your intuition when your imagination is out of focus.",
                       "A good rule of thumb is that people are not going to expand their present views or outlooks by more than five percent at any given time.",
                       "Twinkle, twinkle, little star, what you say is what you are.",
                       "Go confidently in the direction of your dreams. Live the life you've imagined.",
                       "Remember that each of us has been given a special gift just for entering the game of life.",
                       "Where will your beliefs take you?",
                       "Ask and it shall be given.",
                       "Enlightenment is to snap out of the movie of life.",
                       "Education is what survives when what has been learned is forgotten.",
                       "You're not in touch with reality if you don't believe in miracles.",
                       "The most important quality on the spiritual path is courage.",
                       "Remember, power comes from within, not from what you wear.",
                       "I used to be disgusted, now I'm just amused.",
                       "Do something that can change your conciousness.", "Make your bubble bigger.",
                       "Allowing another his truth is a great exercise in wisdom.",
                       "What truth is there in that which is beyond one's consciousness?"]
    
    func getAPhrase() -> String{
        return phraseArray.randomElement()!
    }
}
