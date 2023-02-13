//
//  ColorCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Carolina on 13.02.23.
//

import SwiftUI

struct ColorCircle: View {
    
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.black, lineWidth: 3))
            .frame(width: 125, height: 125)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 0.3))
    }
}
