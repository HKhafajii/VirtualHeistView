//
//  stoyr.swift
//  VirtualHeistView
//
//  Created by Ayme Head on 11/17/23.
//

import Foundation
import SwiftUI

let name: String = "Tre, Ayme, Hassan, Tavon, Dante"

var questhost = String ("Mr. Everywhere")
let questname = String ("Collectors Heist")
let questgoal = (" Players are to collect all 4 games. Once all games are collected player are to report back to the Virtual Center.")
var  playersmeetupspot = ("Virtual Center")

enum Games: String, CaseIterable {
    case VirtualQuest = "Virtual Quest"
    case MoneyWaysHiest = "Money Ways Heist"
    case CandyPlay = "Candy Play"
    case GameOfGames = "Game of Games"
}


func listGames() -> String {
    var string = ""
    for game in Games.allCases {
        if game.rawValue == "Game of Games" {
            string += "and \(game.rawValue)"
        } else {
            string += "\(game.rawValue), "
        }
    }
    return string
}

struct infoboutgame{
    var name: String
    var gametype: String
    var yeargamemade: Int?
}

func collectionSpeech (collection: Games) -> some View {
        switch collection {
        case .VirtualQuest:
            return Text("Congrats! You found one of the games! You are one step closer to treasure! ")
        case  .MoneyWaysHiest:
           return Text(" Congrats! You found another game! You are more step closer to treasure!")
        case .CandyPlay:
            return Text("Congrats! You found another game! You are one more step closer to treasure!")
        case .GameOfGames:
            return Text(" CONGRATULATIONS!! You found \(Games.GameOfGames.rawValue) , you have won the quest! Now turn in your games before its too late!")
        }
    }


func playersIntro() {
    
    print("Welcome \(name). My name is \(questhost), I am your quest host. I am the person you will be turning the games in to. You all were choosen to participate in the quest \(questname). The games that must be collected are \(listGames()). Participants have up to 3 days to collect all games and returned them. Once games are collect you can either turned them in immeditaly or wait till you have all games. If games are not turned in by end of deadline players will be terminated and will be forfeited from receiving any prizes/rewards. Best of luck to all players.  ")
    
    
    
   
       
        
        
    
   
}





func gameCollecting(location: String) {
    switch location {
    case "MainSpaceCentral":
        print(" \(name) are now at their first location: \(location). This is where you will find the game \(Games.VirtualQuest.rawValue). While traveling throught \(location) they cross a plaza with guards who spits out a virus when intruders come near. The guards are there to protect the game \(Games.VirtualQuest.rawValue). In order for them to get past the guards they have to list as many ways to get rid of germs as fast as possible. Continuing on..... after the team gets the game a message boy came and said.... ")
        collectionSpeech(collection: .VirtualQuest)
    case "NewGoldCity":
        print(" Now that \(name) have made it to there next location, which is \(location), they now have to obtain the game \(Games.MoneyWaysHiest.rawValue). While looking for the game Tavon gets lost in an alley. The group doesn't notice until after they fight the MoneyWays Bandits. In the mist of looking for Tavon the group gets confromted by another group who is participating in the quest. As a team the group disguise the game and sly right pass the other group. In the end everyone found Tavon at the transpotation station one his way to the next location." )
        collectionSpeech(collection: .MoneyWaysHiest)
    case "ColdCounty":
        print("")
        collectionSpeech(collection: .CandyPlay)
    case "GameKingdom":
        print("")
        collectionSpeech(collection: .GameOfGames)
        
    default:
        print("ok")
        
        
    }
}
