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
            path.move(to: .init(x: rect.minX, y: rect.minY))
            
            path.addQuadCurve(
                to: .init(x: rect.maxY, y: rect.minY),
                control: .init(x: rect.midX, y: rect.maxY/2 - 80)
            )
            
//            path.addArc(
//                center: .init(x: rect.midX, y: rect.midY),
//                radius: rect.width/2,
//                startAngle: .degrees(0),
//                endAngle: .degrees(180),
//                clockwise: false
//            )
            path.closeSubpath()
        }
    }
}

#Preview {
    PlateShape()
        .stroke(lineWidth: 5)
        .frame(width: 200, height: 200)
        .padding()
        .background(RoundedRectangle(cornerRadius: 5).stroke(style: .init(dash: [5])))
}
