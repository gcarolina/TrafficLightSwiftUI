//
//  ColorLight.swift
//  TrafficLightSwiftUI
//
//  Created by Carolina on 13.02.23.
//

import SwiftUI

struct ColorLight: View {
    
    let color: Color
    let opacity: Double
    let size: CGFloat
    
    var body: some View {
        Circle()
            .frame(width: size, height: size)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.black, lineWidth: 3))
    }
}

struct ColorLight_Previews: PreviewProvider {
    static var previews: some View {
        ColorLight(color: .red, opacity: 1, size: 150)
    }
}
