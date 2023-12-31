//
//  Fiery.swift
//  VirtualHeistView
//
//  Created by Hassan Alkhafaji on 11/13/23.
//

import SwiftUI

struct Fiery: View {
    @State var names = ["Tavon", "Hassan", "Ayme", "Tre", "Dante"]
    @State var userCorrect = false
    @State var secUserChoice: SecChoiceCases?
    @State var usersChoice: ChoiceCases?
    @State var choice: [String] = ["Laser Blazer 9000", "Fly Guys 25's", "Dark Doagans Invisibility potion"]
    mutating func changeChoice(newSetOfChoices: [String]) {
        self = Fiery(choice: newSetOfChoices)
    }
    
    var body: some View {
        
        
        ZStack{
            
            background
            
            VStack{
                
                header
                
                ScrollingView
                    .padding(3)
                
            }
        }
    }
    
    enum SecChoiceCases: CaseIterable {
        case left
        case right
        case straight
    }
    
    
    
    
    enum ChoiceCases: CaseIterable {
        case boots
        case blaster
        case potion
    }
    
    
    
    
    var background: some View {
        LinearGradient(colors: [Color("orng"), Color("red1"), Color("orng")], startPoint: .top ,endPoint: .bottom)
            .ignoresSafeArea()
    }
    
    var ScrollingView: some View {
        
        return ScrollView {
            ZStack {
                RoundedRectangle(cornerRadius: 12).fill(Color("fiery")).opacity(0.9)
                VStack {
                    Introduction()
                        .foregroundColor(Color("red1"))
                        .font(.title)
                    HStack{
                        VStack(alignment: .leading) {
                            ForEach(choice, id: \.self) { tool in
                                Text("They could choose \(tool)\n")
                            }
                            .foregroundColor(Color("red1"))
                            .font(.title)
                        }
                        Spacer()
                        
                    }
                    
                  buttons
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text(choiceResults)
                                .font(.title)
                                .foregroundColor(Color("red1"))
                                
                            
                            
                            
                            if userCorrect == true {
                                nextChall()
                                
                                secSetButtons
                                    
                            }
                            Text(secChoiceResults)
                                .font(.title)
                                .foregroundColor(Color("red1"))
                        }
                        Spacer()
                    }
                    
                    
                }.padding()
            }
        }
        
    }
    
    var buttons: some View {
        return HStack(spacing: 20) {
            Button(action: {
                usersChoice = .blaster
                userCorrect = false
            }, label: {
                Text("Blaster")
            })
            .background(Color("red1")).cornerRadius(12)
            
            
            Button(action: {
                usersChoice = .boots
                userCorrect = true
            }, label: {
                Text("Boots")
            })
            .background(Color("red1")).cornerRadius(12)

            
            Button(action: {
                userCorrect = false
                usersChoice = .potion
                
            }, label: {
                Text("Potion")
            })
            .background(Color("red1")).cornerRadius(12)

        }
        .font(.title)
            .buttonStyle(BorderedButtonStyle())

            .foregroundColor(Color("fiery"))
    }
    
    
    
    
    var secSetButtons: some View {
        return HStack(spacing: 20) {
            Button(action: {
                secUserChoice = .left
            }, label: {
                Text("Left")
            })
            .background(Color("red1")).cornerRadius(12)
            
            
            Button(action: {
                secUserChoice = .straight
            }, label: {
                Text("Straight")
            })
            .background(Color("red1")).cornerRadius(12)

            
            Button(action: {
                secUserChoice = .right
                
            }, label: {
                Text("Right")
            })
            .background(Color("red1")).cornerRadius(12)

        }
        .font(.title)
            .buttonStyle(BorderedButtonStyle())

            .foregroundColor(Color("fiery"))    }
    
    
    var choiceResults:  String {
        let secChall = Chall2(chall2Lines: ["went to the", "They finally escaped"], problem: "They ran into a cave that's so dark they lost eachother")
        if let usersChoice = usersChoice {
            switch usersChoice {
            case .boots:
              
                return "They used the boots and got away. \n\n" + survive(alive: true) + "\n\nAs they tried to escape, \(secChall.problem). \n\nBeing split apart, Hassan is brought to make a choice.\n"
            case .blaster:
                return "Can't shoot through dragon skin. \n\n" + survive(alive: false)
            case .potion:
                return "The dragon just burned the whole room. \n\n" + survive(alive: false)
            
            }
            
        } else {
            return ""
        }
    }
    var secChoiceResults: String {
       
        if let secUserChoice = secUserChoice {
            switch secUserChoice {
            case .left:
               
                return "You chose the \(nextChall.chall2.choice[0]) And you chose right! \n\n\(nextChall.chall2.names[1]) ran accross the path and ran into the rest of the team, everyone was just so happy to see him. \n\nAs soon as they saw eachother, they took off their headsets and called it a day."
              
            case .right:
                
                return "You chose the \(nextChall.chall2.choice[1]). \n\nSadly, down this path \(nextChall.chall2.names[1]) ran into a giant bear guarding her cubs. \n\n\(nextChall.chall2.names[1]) really sat and thought about it for a while, damn, he should've been married by now."
            case .straight:
                return "You chose the \(nextChall.chall2.choice[2]). \n\nSadly, down this path \(nextChall.chall2.names[1]) ran striaght into a giant hole that had him falling for 2 hours. \n\n\(nextChall.chall2.names[1]) contemplated about life for a while and thought, wow, he should've got married."
            }
        } else {
            return ""
        }
    }
    
    var header: some View {
        VStack {
            Text("The Fiery \tManuever")
                .foregroundColor(Color("red1"))
                .shadow(color: .gray, radius: 10)
                .font(.title)
                .padding(45)
                .background(Image("fbg1")).cornerRadius(8)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
    }
}

struct nextChall: View {
    static var chall2 = Fiery(choice: ["left path", "right path", "straight path"])
    var body: some View {
        ForEach(nextChall.chall2.choice, id: \.self) { tool in
            Text("\(nextChall.chall2.names[1]) could choose the \(tool)\n")
        }
        .font(.title)
        .foregroundColor(Color("red1"))
        
    }
   
    
}
//
//  Chapter1.swift
//  CLIStoryTemplate
//



struct storyInfo {
    var names = ["Tavon", "Hassan", "Ayme", "Tre", "Dante"]
    let club = "The Virtual Justice Club"
    let game = "The Cyber Space"
    @State var choice: [String] = []
    static var userAnswer = false
    static var dead = false
    
    mutating func changeChoice(setOfChoices: [String]) {
        self = storyInfo(choice: setOfChoices)
    }
}

var info = storyInfo(choice: ["Laser Blazer 9000", "Fly Guys 25's", "Dark Doagans Invisibility potion"])
    
    
    
    func survive(alive: Bool) -> String {
        if alive == true {
            return "\(info.names.joined(separator: ", ")) live to continue this great adventure!"
        }
        else {
            return "Oh no! \(info.names.joined(separator: ", ")) have perished, try again :("
            
        }
    }
    
    
func Introduction() -> some View{
    Text(
"""
The Fiery Manuever
In 2057, a world gone completely in the direction expected by the most influential scientist 34 years ago.

A group of friends, \(info.names.joined(separator: ", ")), grew up on the East side of Wisconson, where they attended Mitt Romney High.

These three we're very big into the virtual world, to the point they started they're own club, \(info.club).

Today they decided to enter \(info.game), and fight the newest challenge made by the great corruption that darkens their world.

As they log in the \(info.game), they find themselves thrown into their first challenge. They are confronted with a dragon.

In this sudden event they were presented with 3 choices.
"""
    )
}
    

    func chall1() {
        print("\(info.names[2]) come up with the decision to pick their first tool of the day. They can etiher pick up the \(info.choice[0]), the \(info.choice[1]), or \(info.choice[2]).")
        repeat {
        for (index, tool) in info.choice.enumerated() {
            print("Choose \(index + 1) for \(tool)")
        }
            if let userInput = readLine() {
            let userChoice = userInput
                if userChoice == "1" {
                    storyInfo.userAnswer = true
                    storyInfo.dead = true
                    print(
                          """
                          You can't shoot through dragon skin!
                          \(survive(alive: true))
                          """
                    )
                }
                else if userChoice == "2" {
                    storyInfo.userAnswer = true
                    storyInfo.dead = false
                    print(
                          """
                          Good choice, \(info.names.joined(separator: ", ")) used the boots and got away!
                          \(survive(alive: true))
                          """
                          )
                }
                else if userChoice == "3" {
                    storyInfo.userAnswer = true
                    storyInfo.dead = true
                    print(
                          """
                          The dragon just burned the whole room!
                          \(survive(alive: false))
                          """
                        )
                }
                else {
                    print("Please re run and enter the correct number!")
                }
            }
        } while !storyInfo.userAnswer || storyInfo.dead == true
    }
   
        
    struct Chall2 {
        var chall2Lines: [String]
        var problem: String
        mutating func changeLines(newLines: [String], newProblem: String) {
            self = Chall2(chall2Lines: newLines, problem: newProblem)
        }
    }
    
func chall2() {
        storyInfo.userAnswer = false
    let secChall = Chall2(chall2Lines: ["went to the", "They finally escaped"], problem: "They ran into a cave that's so dark they lost eachother")
        info.changeChoice(setOfChoices: ["left path", "right path", "straight path"])
        
        enum pathchoice{
            case path1
            case path2
            case path3
        }
        repeat {
            print("Just when they thought they cleared the tough stuff out the way, \(secChall.problem). \(info.names.joined(separator: ", ")). Being split apart \(info.names[1]) ends up all alone, split from group.")
         
                for (index, direction) in info.choice.enumerated() {
                    print("Choose \(index + 1) to take the \(direction)")
                }
            if let userInput = readLine(), let userChoice = Int(userInput) {
                switch userChoice {
                case 1:
                    _ = pathchoice.path1
                    storyInfo.userAnswer = true
                    storyInfo.dead = false
                    print(
                        """
                        .
                        """
                    )
                case 2:
                    _ = pathchoice.path2
                    storyInfo.userAnswer = true
                    storyInfo.dead = true
                    print(
                    """
                    You chose the \(info.choice[1])
                    Sadly, down this path \(info.names[1]) ran into a giant bear guarding her cubs.
                    \(info.names[1]) really sat and thought about it for a while, damn, he should've been married by now.
                    """
                    )
                case 3:
                    _ = pathchoice.path3
                    storyInfo.userAnswer = true
                    storyInfo.dead = true
                    print(
                        """
                        You chose the \(info.choice[2])
                        Sadly, down this path \(info.names[1]) ran striaght into a giant hole that had you falling for 2 hours.
                        \(info.names[1]) contemplated about life for a while and thought, wow, he should've got married.
                        """
                    )
                default:
                    print("Please enter 1, 2, or 3!")
                }
            } else {
                print("Please enter a valid number!")
            }
        } while !storyInfo.userAnswer || storyInfo.dead == true
        print(
        """
        All they had to do was move a little further down the path and they found the exit.
        As soon as they got out, they all said screw this game hoped of for the day.
        END OF CHAPTER
        
        """
        )
    }
        
//func chapterOne() {
//    Introduction()
//        chall1()
//        chall2()
//}
//    
   
 
        


#Preview {
    Fiery()
}
