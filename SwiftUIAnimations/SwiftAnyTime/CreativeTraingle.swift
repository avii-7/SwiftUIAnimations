//
//  CreativeTraingle.swift
//  SwiftUIAnimations
//
//  Created by Arun on 22/11/24.
//

import SwiftUI

struct CreativeTraingle: View {
    
    private let myColors: [Color] = [.red, .yellow, .blue, .green, .purple, .pink, .orange, .brown]
    
    var body: some View {
        ZStack {
            ForEach(0...20, id: \.self) { index in
                TraingleShape()
                    .stroke(myColors.randomElement()!, lineWidth: 2)
                    .frame(width: 350 - CGFloat((index * 15)), height: 350 - CGFloat((index * 15)))
                    .rotationEffect(.degrees(Double(index)))
                    .offset(x: CGFloat(index * -3), y: CGFloat(index * -15))
            }
        }
    }
}

#Preview {
    CreativeTraingle()
}

