//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Carolina on 13.02.23.
//

import SwiftUI

enum CurrenLight {
    case red, redYellow, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    @State private var currentLight = CurrenLight.red
    
    @State private var time = 5
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    private func nextColor() {
        switch currentLight {
        case .red: currentLight = .redYellow
        case .redYellow: currentLight = .green
        case .green: currentLight = .yellow
        case .yellow: currentLight = .red
        }
    }
}


extension ContentView {
    var body: some View {
        ZStack {
            Color(.gray).ignoresSafeArea(.all)
            VStack(spacing: 25) {
                ColorLight(color: Color(red: 0.918, green: 0.106, blue: 0.106),
                           opacity: (currentLight == .red || currentLight == .redYellow) ? 1 : 0.3,
                           size: 150)
                ColorLight(color: Color(red: 0.96, green: 0.902, blue: 0.06),
                           opacity: (currentLight == .redYellow || currentLight == .yellow) ? 1 : 0.3,
                           size: 150)
                ColorLight(color: Color(red: 0.356, green: 0.785, blue: 0.064),
                           opacity: (currentLight == .green) ? 1 : 0.3,
                           size: 150)
                
                Spacer()
                
//                ChangeColorButton(title: buttonTitle,
//                                  width: 250,
//                                  height: 80,
//                                  backgroundColor: Color(red: 0.396, green: 0.262, blue: 0.478)) {
//                    buttonTitle = "NEXT"
//                    nextColor()
//                }
                
                Text("\(time)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .onReceive(timer) { _ in
                        time -= 1
                        if time == 0 {
                            nextColor()
                            time = 3
                        }
                    }
                Spacer()
            }
            .padding(.top, 30)
            .padding(.bottom, 50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
