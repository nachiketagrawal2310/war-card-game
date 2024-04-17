//
//  ContentView.swift
//  war card game
//
//  Created by Nachiket Agrawal on 09/03/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    @State var playerScore = 0
    @State var cpuScore = 0
    @State private var alertIsVisible:Bool = false
    
    var body: some View {
         
        ZStack{
            Image("background-cloth").resizable().ignoresSafeArea()
            VStack{
                 
                Image("logo").padding()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                
                Button{
                    deal()
                } 
                label: {
                    Image("button")
                }
                

                
                VStack{
                    HStack{
                        Spacer()
                        Text("Player")
                        Spacer()
                        Text("CPU")
                        Spacer()
                    }.padding(.bottom,10.0).font(.headline)
                    HStack{
                        Spacer()
                        Text(String(playerScore))
                        Spacer()
                        Text(String(cpuScore))
                        Spacer()
                    }.font(.largeTitle)
                    
                    
                }.foregroundColor(.white).padding()
            }
        }
            
        }
    
    func deal() {
        //Randomize the players card
        var playercardvalue:Int = Int.random(in: 2...14)
        playerCard = "card" + String(playercardvalue)
        
        //Randomize the cpus card
        var cpucardvalue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpucardvalue)
        
        //Update the Score
        if playercardvalue > cpucardvalue{
            // Add 1 to playerScore
            playerScore = playerScore + 1
            
        }
        else if cpucardvalue > playercardvalue{
            //Add 1 to cpuScore
            cpuScore += 1
            
        }
        else {
            //Tie 
        }
        
    }
    
    }


#Preview {
    ContentView()
}
