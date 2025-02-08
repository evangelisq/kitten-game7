//
//  ContentView.swift
//  kitten game7
//
//  Created by Evangelis Albesa on 2025-02-07.
//

import SwiftUI

struct ContentView: View {
    
    var playerCard = "card11"
    var cpuCard = "card12"
    
    var playScore = 0
    var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Spacer()
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            Spacer()
            
            // Added nm spacer...
            VStack{
                Spacer()
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 90, height: 90)
                
                Spacer()
                
                HStack{
                  
                    Image("card11")
                        .resizable()
                        .frame( height:150)
                    
                    Spacer()
                    Image("card12")
                        .resizable()
                        .frame(height:150)
                    
                    Spacer()
                  
                }
                Spacer()
                
                  Button {
                      deal()
                  }label:{
                    
                      Image("button")
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(width: 100, height: 100)
            }
                Spacer()
            }
            HStack{
              
                VStack{
                    
                    Spacer()
                    Text("Player")
                        .font(.headline)
                        .padding(.bottom, 10.0)
                    Text(String(playScore))
                        .font(.largeTitle)
                    
                }
                VStack{
                    
                    Spacer()
                    Text("CPU")
                        .font(.headline)
                        .padding(.bottom, 10.0)
                    Text(String(cpuScore))
                        .font(.largeTitle)
                }
                
            }
            
        }
       
        }
    func deal(){
        print("Deal Cards")    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
