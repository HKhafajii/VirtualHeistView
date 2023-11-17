//
//  ContentView.swift
//  QuestofLumina
//
//  Created by Tavon Strange on 11/16/23.
//

import SwiftUI

struct Lumina: View {
    // Array defining characters
    @State var characters = ["Tre", "Tavon", "Hassan", "Ayme", "Dante"]
    @State var powers = ["Super Strength", "Super Speed", "Mind Control","Foresight","Elasticity" ]
    
    
    
    // Variable to track virtual monster state
    @State private var virtualMonsterState: VirtualMonsterState = .normal
    
    // Flag to represent sacrifice
    @State private var sacrifice: Bool = false
    
    var body: some View {
        
        ZStack{
            
            
            AngularGradient(colors: [Color.red, Color.blue],
                            center: .topLeading,
                            angle: .degrees(180 + 45)
                            
            )
            .ignoresSafeArea()
            
            
            
            VStack {
                Text("Quest For Lumina")
                    .foregroundColor(.blue)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .italic()
                
                Text("By: Tavon Strange")
                
                Image("lumina")
                    .resizable()
                    .frame(width: 300, height: 275)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .scaledToFit()
                ScrollView {
                    
                    
                        
                        LuminaIntro
                            .padding()
                        Lcontinue
                        
                        lMonster
                        monsterpic
                    Battle
                        
                        
                    }
                .background(.white.opacity(0.5)).cornerRadius(12)
                .padding()
            
                       
                        }
                        
                        
                        
                        
                    }
                    
                
                
                
                
            
            
        }
    var LuminaIntro: some View {
        Text(
            """
                 In the Virtual World of Lumina there were 5 brilliant friends  who were condsidered the top minds of their time. Fueled by a collective desire to make a positive impact on the world, they embarked on a mission to create a special cure would revolutionize medicine.One day, as they were experimenting in the lab there was  a massive explosion.The blast blessed all of them with incredible powers beyond their wildest imaginations. \(characters[1]) woke and realized he had  \(powers[1]). \(characters[0]) woke and notice he had \(powers[0]). \(characters[2]) had the power of \(powers[2]), \(characters[3]) had  \(powers[3]) and \(characters[4]) had \(powers[4]). Yet while becoming powerful themselves they created their biggest problem.
                 """)
        }
    var Battle: some View {
        Text("As they were getting themselves used to their powers they were excited about it. They practiced and each told each other of their special abilities. Little did they know the robot would strike fiercly shocking them all. The robot told them his plan to destroy all of mankind starting with them since he dectected them as their biggest threat. An assuming battle began and the fight raged on. Eventually they all would over power the Robot but not with sacrifice. \(characters[4]) would use his powers to engulf the Robot as it tried to self-destruct itself as a last attempt at victory. He didnt succeed, he and \(characters[4]) both died. In his death \(characters[4]) save the city of Lumina  ")
        
    }
    
    }

    #Preview {
        Lumina()
    }

enum VirtualMonsterState {
   case normal, enraged, defeated
}



var Lcontinue: some View {
    return Image ("labexplosion")
        .resizable()
        .scaledToFit()
        .frame(width:200, height: 200)
}


var lMonster: some View {
    Text("While they were all getting their powers they had created a super robot that would have all of their powers. He quickly noticed them from afar and identified them as threat.")
}

var monsterpic: some View {
    return Image ("evilrobot")
        .resizable()
        .scaledToFit()
        .frame (width:200, height: 200)
    
}





// Simulate the creation of a virtual monster
// if virtualMonsterState == .normal {
 //   Text("During the explosion, a virtual monster was inadvertently created, posing a threat to the digital realm.")
  //  Text("United by their shared transformation, ") +
  

    //Text("must now face this virtual menace.")
    
    // Buttons to simulate different ways of defeating the monster
   // HStack {
    //    Button(action: {
            // Simulating defeating the monster using their powers
     //       self.sacrifice = false
       //     self.virtualMonsterState = .defeated
        //}) {
          //  Text("Defeat with Powers")
        
        
       // Button(action: {
            // Simulating defeating the monster through sacrifice
        //    self.sacrifice = true
     //      self.virtualMonsterState = .defeated
       // }) {
      //      Text("Sacrifice to Defeat")
        


// Display the outcome of the simulated defeat
//if sacrifice {
    //Text("One of the heroes sacrifices themself to defeat the virtual monster!")
// } else {
//      Text("Virtual monster defeated using their powers!")


// Enum defining character states
//enum CharacterState {
 //   case normal, corrupted, defeated
//}

// Variables to track character states
// @State private var characterStates: [CharacterState] = Array(repeating: .normal, count: 5)

// Enum defining virtual monster states


