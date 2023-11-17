//
//  location2.swift
//  VirtualHeistView
//
//  Created by Ayme Head on 11/17/23.
//

import SwiftUI

struct location2: View {
    var locations = ["MainSpaceCentral", "NewGoldCity", "CloudCounty", "GameKingdom"]
    var body: some View {
        
           
        
               ZStack{
                   Color(.darkblue)
                       .ignoresSafeArea()
                   VStack{
                       ScrollView{
                           Text("Hello \(name) welcome to CloudCounty. The group got a warm welcome from the governor of Cloud County. They asked her is she knew where the game \(Games.CandyPlay.rawValue) was. She was egar to tell them because every since the game beeen in her possesion the County have been getting harrased by dark viruses looking for it. Tre told her not to worry and that once the game is in their hands Cloud Conty won't have any more troubles. The governor said the game was in a skyscrape; the tallest building in the County. She also warned them that thier trip may be a little hazzy and thats exaclty what it was. With everyone not being original citizens of Cloud County they didn't have the ablity to still breath in high altitude lucky the governor came along with them and was able to get the game for they. Once the game was retrived governor thank the group for coming, they were on their way to their next location and then a message boy came and said.... ")
                               .font(.title2)
                           
                           collectionSpeech(collection: .VirtualQuest)
                               .font(.title2)
                       }
                   }
               }
           }
       }
#Preview {
    location2()
}
