//
//  CustomStructure.swift
//  InterfaceReproduction
//
//  Created by Leon Gell on 2022-11-17.
//

import SwiftUI

struct CustomStructure: View {
    
    //MARK: Stored Properties

    @State var truefalse: Bool = true
    let time: String
    let AMPM: String
    let color: Color
    
    
    
    //MARK: Computed Properties
    
    
    
    var body: some View {
        ZStack {
       
            
            // first color background
            Color.black
                .ignoresSafeArea()
            
            Toggle(isOn: $truefalse) {
                VStack{
                    HStack {
                        Text(time)
                            .foregroundColor(color)
                            .font(Font.system(size:60, weight: .thin))
                        
                        Text(AMPM)
                            .font(Font.system(size:30, weight: .thin))
                            .foregroundColor(color)
                        Spacer()
                    }
                    HStack {
                        Text("Alarm")
                            .foregroundColor(color)
                        Spacer()
                        
                    }
                    
                }
                Divider()
            }
            
            
            
            
            
        }
    }
}

struct CustomStructure_Previews: PreviewProvider {
    static var previews: some View {
        CustomStructure(truefalse: false , time: "5:07", AMPM: "AM", color: .gray)
    }
}
