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
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
            path.closeSubpath()
        }
    }
}

#Preview {
    TraingleShape()
        .stroke(lineWidth: 5)
        .frame(width: 100, height: 100)
}
