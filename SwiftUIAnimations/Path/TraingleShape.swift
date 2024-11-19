//
//  TraingleShape.swift
//  SwiftUIAnimations
//
//  Created by Arun on 19/11/24.
//

import SwiftUI

struct TraingleShape: Shape {
    
    let lineLenght: Double = 100.0
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.midY - lineLenght/2))
            path.addLine(to: CGPoint(x: rect.midX - lineLenght/2, y: rect.midY + lineLenght/2))
            path.addLine(to: CGPoint(x: rect.midX + lineLenght/2, y: rect.midY + lineLenght/2))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.midY - lineLenght/2))
            path.closeSubpath()
        }
    }
}

#Preview {
    TraingleShape()
        .stroke(lineWidth: 5)
        .background(Color.blue)
}
