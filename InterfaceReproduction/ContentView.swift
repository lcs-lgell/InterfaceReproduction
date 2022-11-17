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
                .padding(.vertical, 10)
               
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
                        HStack{
                            Text("No Alarm")
                                .foregroundColor(.gray)
                                .font(Font.system(size: 50, weight: .light))
                            Spacer()
                        }
                        HStack {
                            Text("Tomorrow Morning")
                                .foregroundColor(.gray)
                            Spacer()
                        }
                                

                    }
                    Spacer()
                    // adding a button
                            Button(action: {}) {
                                Text("CHANGE")
                                    .foregroundColor(Color("paleorange"))
                                    .font(Font.system(size: 15, weight: .medium))
                            }
                            .tint(Color("darkgrey"))
                            .buttonStyle(.borderedProminent)
                            .buttonBorderShape(.automatic)
                            .controlSize(.small)
                    

                }
                .padding(.vertical, 20)
                //text other before the custom structures
                HStack {
                    Text("Other")
                        .foregroundColor(.white)
                        .font(Font.system(size: 20, weight: .medium))
                    Spacer()
                }
                
                // toggles
                
                Toggle(isOn: .constant(true)) {
                    VStack{
                        HStack {
                            Text("5:07")
                                .foregroundColor(.white)
                                .font(Font.system(size:60, weight: .thin))
                            
                            Text("AM")
                                .font(Font.system(size:30, weight: .thin))
                            Spacer()
                        }
                        HStack {
                            Text("Alarm")
                            Spacer()
                            
                        }
                        
                    }
                    Divider()
                }
                
                
                
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView(selection: Binding.constant(2)) {
            
            ContentView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("World Clock")
                }
            
            ContentView()
                .tabItem {
                    Image(systemName: "alarm.fill")
                    Text("Alarm")
                }
            
            Text("Stopwatch")
                .tabItem {
                    Image(systemName: "stopwatch.fill")
                    Text("Stopwatch")
                    
                }
            
            Text("Timer")
                .tabItem {
                    Image(systemName: "timer")
                    Text("Timer")
                }
            
        }
        //change the current view you on its color
        .accentColor(.orange)
        // makes every logo on the bottom visible to light grey
        .preferredColorScheme(.dark)
    }
    }

