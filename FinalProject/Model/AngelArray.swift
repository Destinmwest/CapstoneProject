//
//  AngelArray.swift
//  FinalProject
//
//  A struct containing arrays with the information for the nine angels
//  and several functions to facilitate their usage.
//
//  The response portion of the Angel struct contains the beginning of a sentence
//  that is then completed by an action from the Action struct. This combination
//  is presented to the user as the response from the Angel
//
//  Created by Destin West on 3/24/20.
//  Copyright © 2020 Destin West. All rights reserved.
//

struct AngelArray {
        
    let angelArray = [
        //0
        Angel(
                name: "Auriel",
                description: "\"The Angel of Vision, The Light of God.\" Governs the ebbs of life. Assists with contemplation of the future and the germinating stages of life.",
                responses: ["Seek assistance to help you through the night, ",
                        "Focus on relaxation for more restful sleep, ",
                        "The best time to begin is at night, ",
                        "Winter holds blessings for you, ",
                        "The concern is over coldness, ",
                        "More needs to be given, ",
                        "It is now time to release pent up emotions, ",
                        "Focus on what the future holds for you, ",
                        "The answer lies in your youth, ",
                        "Begin to develop your ideas into reality, ",
                        "Think about family planning, ",
                        "You will be drawn to the right people for future planning, ",
                        "Focus on your actions affecting your future, ",
                        "Incorporate black, brown, or gray in your surroundings, ",
                        "Listen to the truth of your feelings, ",
                        "Your feelings help you see more clearly, ",
                        "Surround yourself in light, ",
                        "Be the light you choose to create, ",
                        "The keys to your future lie in your current actions, ",
                        "Receive that which the earth blesses you with, ",
                        "Lessen your intensity, "],
                number: 2),
        //1
        Angel(
                name: "Camael",
                description: "\"He who seeks God.\" Supplies strength, empowerment, justice, security, and comfort in interpersonal relationships. Helps with self-discipline and seeking what is lost.",
                responses: ["The focus is on your personal relationships, ",
                          "Higher a partner, ",
                          "Confide in a close companion, ",
                          "Strength comes from sharing, ",
                          "Your clarity and understanding comes from the assistance of another person, ",
                          "Engagement or marriage is on the horizon, ",
                          "You'll have better results working with a team, ",
                          "There is strength in numbers, ",
                          "Set restrictions for yourself, ",
                          "Participate in training to improve your mental and emtional self, ",
                          "Gain forgiveness over your habits by retraining yourself, ", "Set time aside for personal development and stick to it, ",
                          "Self-discipline is the key, ",
                          "Power is found in your interpersonal relationships",
                          "Your lost item will be recovered by, ",
                          "Know and calirfy your boundaries, ",
                          "Focus on improving your spiritual self, ",
                          "Allow yourself to be more intimately connected to a partner, ",],
                number: 9),
        //2
        Angel(
                name: "Gabriel",
                description: "\"God is my strength.\" The voice of God. Assists with, and is the maker of, change. Announces spiritual commission, assists with protection, hopefulness, dreams, ascension and intuition",
                responses: ["The voice of God has spoken concerning your issue, ",
                          "It is now time to make changes, ",
                          "It is your spiritual duty, ",
                          "You're given the authority, ",
                          "It is now time to act, ",
                          "You have the power and ability to make needed changes, ",
                          "Your voice has been heard, ",
                          "Proclaim loudly your convictions, ",
                          "Announce publicly your thoughts, ",
                          "Toot your own horn, ",
                          "Your answer lies in the words of a musician, ",
                          "Your are a communicator, ",
                          "You'll succeed in a career dealing with water, ",
                          "Your answer lies in the media, ",
                          "Wear, or bring, the colors of tan, brown, and dark green into your environment",
                          "Expression is your key, express your emotions, ",
                          "Focus on music, ",
                          "Believe in your abilities",
                          "Accept blessings, "],
                number: 7),
        //3
        Angel(
                name: "Haniel",
                description: "\"Mercy and Grace of God.\" Governor of harmony. Power over darkness. Assists with seeing, adding, and enjoying, grace, charm, poise, health, harmony, and beauty.",
                responses: ["Let your heart lead, ",
                          "Love is the focus, ",
                          "Focus on harmony, ",
                          "You shall overcome fears, ",
                          "Light is shed to reveal obstacles, ",
                          "You receive your inspiration through love, ",
                          "Praise and honor are offered to you, ",
                          "Question your devotion,",
                          "By the grace of God/Goddess you are blessed, ",
                          "Wait until December, it is your month, ",
                          "Venus energies support your concerns, ",
                          "You are blessed with power over darkness, ",
                          "Love empowers your self and situation, ",
                          "The Glory of God/Goddess is upon you, ",
                          "Know that evil is that which takes you from your center, ",
                          "Self-empowerment is the only true power, ",
                          "Love as a child would love, ",
                          "Remember to be gracious and charming, ",
                          "Glory results in seeing the light of God/Goddess in all things and people, ",
                          "Reflect on the colors you emanate to others, "],
                number: 4),
        //4
        Angel(
                name: "Michael",
                description: "\"The Angel who is like God.\" Encourages success and assists in the awakening of conciousness. Assists with courage, strength, truth, peace, dreams, and beauty. Protector of free will, wellness, and warriors.",
                responses: ["Have courage, all turns out for the better, ",
                          "Be at peace, ",
                          "Surround yourself in beauty, ",
                          "Love is your answer, ",
                          "Take classes to awaken your senses, ",
                          "You are becoming more spiritually focused, ",
                          "Exercise your free-will and wellness, ",
                          "A strong defense is in place, ",
                          "You have divine protection, ",
                          "Learn the art of protecting yourself, ",
                          "You are shielded from harm, ",
                          "You must move through the situation with strength and courage, ",
                          "Be truthful in all your dealings, ",
                          "Difficulties are faced with God, ",
                          "Find ways to use one or more of these colors in your life: cobalt, purple, deep green, gold, and rose, ",
                          "Focus on awakening conciousness withing yourself, ",
                          "Be at peace knowing that you have the strength, ",
                          "Local authorities may be of assistance, "],
                number: 5),
        //5
        Angel(
                name: "Raphael",
                description: "\"Shining one who heals.\" Master of truth. Assits with grounding, and with physical, emotional, mental and spiritual healing. Aids the sciences, creative talents, and travelers.",
                responses: ["You are a healer of the earth, ",
                          "You are a healer of humans, ",
                          "Using your creative talents are the key, ",
                          "The focus is in healing despair, ",
                          "The focus is in lessining/clearing/lifting depression, ",
                          "Balance is the answer, ",
                          "Wear and use the colors emerald green, pale blue, and soft green, ",
                          "Explore the sciences, ",
                          "Believe your dreams, ",
                          "Question what is required, ",
                          "Be with your creative thoughts, ",
                          "Healing begins first in meditation, ",
                          "Send thoughts of healing energy, ",
                          "Know that your discomfort is a message of where to begin your healing, ",
                          "Your life's work is to now take on a creative turn, ",
                          "The heart is to be heard, ",
                          "Allow depression to show you how to empathize with others, ",
                          "True compassion is only shared when you first receive compassion for yourself"],
                number: 6),
        //6
        Angel(
                name: "Raziel",
                description: "\"Secret of God.\" Keeper of mysteries, magic and guardian of originality, knowledge, and pure ideas. Assists with high-level awareness and information. Giver of the book of spells.",
                responses: ["You'll find clarity and truth in studying Religion (no, not that religion.)",
                          "Something remains unseen, ",
                          "A secret needs exposed, ",
                          "Explore the mysteries of life, ",
                          "Mysteries are your strong suit, ",
                          "Be original, ",
                          "Strength and knowledge is found in originality, ",
                          "Education is on the horizon, ",
                          "You know what to do, do it, ",
                          "Go with your idea, ",
                          "Meditate for answers to the mysteries, ",
                          "Keep a secret, ",
                          "A pure idea holds the answers, ",
                          "The secret will be revealed in your relationship with God/Goddes, ",
                          "Know your spiritual self, ",
                          "There is yet another perception to be seen, ",
                          "Mysteries are revealed in perfect timing, ",
                          "A pure idea is needed in your relationship, ",
                          "Sharing with others will revitalize your life, ",
                          "You are the catalyst in an adventure, "],
                number: 3),
        //7
        Angel(
                name: "Uriel",
                description: "\"Fire of God.\" Assists with new thoughts and ideas. Empowers prophecy, transformation, sexuality, clarity, repentance, salvation, and sanity. ",
                responses: ["Scroll through current information, ",
                          "You have your answers within, ",
                          "Speak that which you choose to create, ",
                          "Listen to prophecy, ",
                          "Changes are to occur in your character, ",
                          "Transformation is to occur in structure or appearance (physical, home, business, friends, family), ",
                          "Realization is a key factor, ",
                          "Listen to or, make music, ",
                          "Your insights lie in literature, ",
                          "Receive inspiration for your teaching abilities, ",
                          "An emergency is at hand, ",
                          "Judgment is the issue, ",
                          "An answer awaits in form, ",
                          "Blessings are given to keep you safe from sin or danger, ",
                          "Focus on keeping your sanity, ",
                          "You have the gift of prophecy, ",
                          "Practice the art of alchemy, ",
                          "Literature will play a role in your thoughts, ",
                          "Your salvation and sanity is restores, ",
                          "Know that prophecy may be a state of mind, "],
                number: 8),
        //8
        Angel(
            name: "Metatron",
            description: "\"King of Angels, Prince of the Divine Face.\" The link between the human and divine. A liberator who encourages fun and rest. Bestows the highest power of abundance.",
            responses: ["Prayer and meditation for calling upon the divine is in order, ",
                      "Your outcome is of great abundance, ",
                      "You are to rise to the top, ",
                      "Seek higher authority, ",
                      "Be in the flow, trust all is well, ",
                      "Ask and you shall receive, ",
                      "The King of Angels assists your direction, ",
                      "You are able to see beyond your surroundings, ",
                      "A chief or high state official will see things your way, ",
                      "The number seven, in all its meaning, has a signigicance to you now,",
                      "Start or, be a part of a class, teaching abundance, ",
                      "See yourself receiving your dreams, ",
                      "You are a divine communicator, ",
                      "Call upon the Angels in your daily life, ",
                      "Expect to receive a raise, ",
                      "Trust your internal guide, ",
                      "Remember gratitude is the language of the heavens, "],
            number: 1)
    ]
    
    //returns the name of the angel
    //used to inform the user
    func getAngelName(_ randomNumber: Int) -> String {
        let number = randomNumber
        
        switch number {
        case 9:
            return angelArray[4].name
        case 10, 16:
            return angelArray[3].name
        case 11:
            return angelArray[0].name
        case 12, 18:
            return angelArray[8].name
        case 13, 19:
            return angelArray[1].name
        case 14:
            return angelArray[2].name
        case 15:
            return angelArray[5].name
        case 17:
            return angelArray[6].name
        case 20:
            return angelArray[7].name
        
        default:
            return "Something went wrong, spin again."
        }
    }

    //returns the description of the angel
    //used to inform the user
    func getAngelDescription(_ randomNumber: Int) -> String {
        let number = randomNumber
        
        switch number {
        case 9:
            return angelArray[4].description
        case 10, 16:
            return angelArray[3].description
        case 11:
            return angelArray[0].description
        case 12, 18:
            return angelArray[8].description
        case 13, 19:
            return angelArray[1].description
        case 14:
            return angelArray[2].description
        case 15:
            return angelArray[5].description
        case 17:
            return angelArray[6].description
        case 20:
            return angelArray[7].description
        
        default:
            return "Something went wrong, spin again."
        }
    }
    
    //returns a random from the Angel's response
    //the first part of sentence for the Angels response to the user
    func getAngelAction(_ randomNumber: Int) -> String {
        let number = randomNumber
        
        switch number {
        case 9:
            return angelArray[4].responses.randomElement()!
        case 10, 16:
            return angelArray[3].responses.randomElement()!
        case 11:
            return angelArray[0].responses.randomElement()!
        case 12, 18:
            return angelArray[8].responses.randomElement()!
        case 13, 19:
            return angelArray[1].responses.randomElement()!
        case 14:
            return angelArray[2].responses.randomElement()!
        case 15:
            return angelArray[5].responses.randomElement()!
        case 17:
            return angelArray[6].responses.randomElement()!
        case 20:
            return angelArray[7].responses.randomElement()!
        
        default:
            return "Something went wrong, spin again."
        
        }
    }
}
