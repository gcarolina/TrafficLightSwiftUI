//
//  ChangeColorButton.swift
//  TrafficLightSwiftUI
//
//  Created by Carolina on 15.02.23.
//

import SwiftUI

struct ChangeColorButton: View {
    let title: String
    let width: CGFloat
    let height: CGFloat
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.175, green: 0.009, blue: 0.246))
        }
        .frame(width: width, height: height)
        .background(backgroundColor)
        .cornerRadius(height / 2)
        .overlay(RoundedRectangle(cornerRadius: height / 2, style: .continuous)
            .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color(.gray).ignoresSafeArea()
            ChangeColorButton(title: "START",
                              width: 150,
                              height: 70,
                              backgroundColor: Color(red: 0.396, green: 0.262, blue: 0.478),
                              action: {})
        }
    }
}
