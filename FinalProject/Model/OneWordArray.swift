//
//  oneWordArray.swift
//  FinalProject
//
//  An array of words to be presented in the PickACard popupView
//
//  Created by Destin West on 4/11/20.
//  Copyright © 2020 Destin West. All rights reserved.
//

struct oneWordArray {
    
    let oneWordArray = ["Integrity",
                        "Creativity",
                        "Trust",
                        "Flexibility",
                        "Harmony",
                        "Expectancy",
                        "Birth",
                        "Communication",
                        "Enthusiasm",
                        "Faith",
                        "Strength",
                        "Responsibility",
                        "Freedom",
                        "Humor",
                        "Love",
                        "Respect",
                        "Obedience",
                        "Delight",
                        "Purification",
                        "Simplicity",
                        "Wisdom",
                        "Trust",
                        "Creativity",
                        "Education",
                        "Integrity",
                        "Depth",
                        "Grace",
                        "Celebration",
                        "Transformation",
                        "Healing",
                        "Efficiency",
                        "Peace",
                        "Commitment",
                        "Synthesis",
                        "Joy",
                        "Willingness",
                        "Tenderness",
                        "Authenticity",
                        "Spontaneity",
                        "Understanding",
                        "Support",
                        "Adventure",
                        "Courage",
                        "Intention",
                        "Compassion",
                        "Acceptance",
                        "Light",
                        "Vision",
                        "Gratitude",
                        "Abundance",
                        "Discernment",
                        "Exploration",
                        "Purpose",
                        "Risk",
                        "Patience",
                        "Power",
                        "Kindness",
                        "Relaxation",
                        "Forgiveness",
                        "Balance",
                        "Surrender",
                        "Play",
                        "Honesty",
                        "Release",
                        "Contentment",
                        "Clarity",
                        "Sisterhood",
                        "Brotherhood",
                        "Beauty",
                        "Presence",
                        "Openness",
                        "Truth",
                        "Resilience",
                        "Awakening",
                        "Expansiveness",
                        "Inspiration"]
    
    func getAWord() -> String{
        return oneWordArray.randomElement()!
    }
    
}
