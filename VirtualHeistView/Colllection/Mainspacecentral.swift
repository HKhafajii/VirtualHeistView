//
//  Mainspacecentral.swift
//  VirtualHeistView
//
//  Created by Ayme Head on 11/17/23.
//

import SwiftUI

struct Mainspacecentral: View {
    
    
    var locations = ["MainSpaceCentral", "NewGoldCity", "CloudCounty", "GameKingdom"]
    
    
    
    var body: some View {
        ZStack{
            Color(.darkblue)
            VStack{
                
                Text(" \(name) are now at their first location: \(locations[0]). This is where you will find the game \(Games.VirtualQuest.rawValue). While traveling throught \(locations[0]) they cross a plaza with guards who spits out a virus when intruders come near. The guards are there to protect the game \(Games.VirtualQuest.rawValue). In order for them to get past the guards they have to list as many ways to get rid of germs as fast as possible. Continuing on..... after the team gets the game a message boy came and said.... ")
                
                collectionSpeech(collection: .VirtualQuest)
                //            } .foregroundColor(.darkblue)
                //                .background(.white)
                //        }
            }
        }
    }
}
#Preview {
    Mainspacecentral()
}
