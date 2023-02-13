//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Carolina on 13.02.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var opacityRed = 0.3
    @State private var opacityYellow = 0.3
    @State private var opacityGreen = 0.3
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    var body: some View {
        ZStack {
            Color(.gray).ignoresSafeArea()
            VStack {
                TrafficLight().redCircle.opacity(opacityRed)
                TrafficLight().yellowCircle.opacity(opacityYellow)
                TrafficLight().greenCircle.opacity(opacityGreen)
                    .padding(.bottom, 35)
                
                Button(action: {
                    changeOpacity()
                }, label: {
                    if opacityRed == lightIsOn || opacityYellow == lightIsOn || opacityGreen == lightIsOn {
                        Text ("NEXT")
                    } else {
                        Text("START")
                    }
                })
                .buttonStyle(.bordered)
                .tint(Color(red: 0.371, green: 0.066, blue: 0.677))
                .cornerRadius(40)
                .frame(width: 120, height: 50)
            }
            .padding(.top, 30)
            .padding(.bottom, 50)
        }
    }
    
    private func changeOpacity(){
        if opacityRed < lightIsOn, opacityYellow < lightIsOn, opacityGreen < lightIsOn {
            opacityRed = lightIsOn
        } else if opacityRed == lightIsOn, opacityYellow < lightIsOn {
            opacityRed = lightIsOn
            opacityYellow = lightIsOn
        } else if opacityRed == lightIsOn, opacityYellow == lightIsOn {
            opacityRed = lightIsOff
            opacityYellow = lightIsOff
            opacityGreen = lightIsOn
        } else if opacityGreen == lightIsOn {
            opacityGreen = lightIsOff
            opacityYellow = lightIsOn
        } else if opacityYellow == lightIsOn {
            opacityRed = lightIsOn
            opacityYellow = lightIsOff
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
