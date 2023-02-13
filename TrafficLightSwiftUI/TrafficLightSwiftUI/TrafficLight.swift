//
//  TrafficLight.swift
//  TrafficLightSwiftUI
//
//  Created by Carolina on 13.02.23.
//

import SwiftUI

struct TrafficLight: View {
    
    var redCircle: some View {
        ColorCircle(color: Color(red: 0.916, green: 0.143, blue: 0.143))
    }
    
    var yellowCircle: some View {
        ColorCircle(color: Color(red: 0.888, green: 0.81, blue: 0.194))
    }
    
    var greenCircle: some View {
        ColorCircle(color: Color(red: 0.197, green: 0.685, blue: 0.105))
    }
    
    var body: some View {
        VStack {
            redCircle
            yellowCircle
            greenCircle
        }
    }
}

struct TrafficLight_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLight()
    }
}
