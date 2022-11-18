//
//  ContentView.swift
//  InterfaceReproduction
//
//  Created by Leon Gell on 2022-11-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
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
                    Group {
                        CustomStructure(truefalse: false, time: "5:07", AMPM: "AM", color: .gray)
                        CustomStructure(truefalse: true, time: "7:13", AMPM: "AM", color: .white)
                        CustomStructure(truefalse: true, time: "1:08", AMPM: "PM", color: .white)
                        CustomStructure(truefalse: false, time: "3:45", AMPM: "PM", color: .gray)
                    }
                    
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView(selection: Binding.constant(2)) {
            
            Text("World Clock")
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

