//
//  PlateShape.swift
//  SwiftUIAnimation
//
//  Created by Arun Kumar on 19/11/24.
//

import SwiftUI

struct PlateShape: Shape {
    
    let size: Double = 100.0
    
    func path(in rect: CGRect) -> Path {
        
        Path { path in
            path.move(to: CGPoint(x: rect.midX - 30 - 4, y: rect.midY + 2))
            
            
//            path.addLine(to: CGPoint(x: rect.midX - lineLenght/2, y: rect.midY + lineLenght/2))
//            path.addLine(to: CGPoint(x: rect.midX + lineLenght/2, y: rect.midY + lineLenght/2))
//            path.addLine(to: CGPoint(x: rect.midX, y: rect.midY - lineLenght/2))
            path.closeSubpath()
        }
    }
}

#Preview {
    PlateShape()
        .stroke(lineWidth: 5)
        .background(Color.blue)
}
