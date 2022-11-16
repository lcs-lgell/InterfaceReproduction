//
//  ContentView.swift
//  InterfaceReproduction
//
//  Created by Leon Gell on 2022-11-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // first color background
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    //Alarm text and images underneath
                    Text("Alarm")
                        .font(Font.system(size: 40, weight: .medium))
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.vertical, 15)
               
                // bed and ther titles
                HStack {
                    Image(systemName: "bed.double.fill")
                        .foregroundColor(.white)
                    Text("Sleep | Wake Up")
                        .foregroundColor(.white)
                        .font(Font.system(size: 20, weight: .medium))
                    Spacer()
           
                }
                .padding(.vertical, 10)
                // Grey writing and change button
                HStack{
                    VStack{
                        Text("No Alarm")
                            .foregroundColor(.gray)
                            .font(Font.system(size: 50, weight: .light))
                        
                        Text("Tomorrow Morning")
                            .foregroundColor(.gray)
                            

                    }
                    

                }
                
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
