//
//  MetroShapeView.swift
//  SwiftUIAnimations
//
//  Created by Arun on 22/11/24.
//

import SwiftUI

struct MetroShapeView: View {
    
    var body: some View {
        MetroShape()
            .stroke(lineWidth: 5)
            .frame(height: 100)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 2).stroke(style: .init(dash: [5]))
            )
            .padding()
    }
}

#Preview {
    MetroShapeView()
}

extension MetroShapeView {
    struct MetroShape: Shape {
        
        func path(in rect: CGRect) -> Path {
            Path { path in
                path.move(to: .init(x: rect.minX, y: rect.maxY))
                path.addArc(
                    center: .init(x: rect.height/2, y: rect.maxY),
                    radius: rect.height/2,
                    startAngle: .degrees(180),
                    endAngle: .degrees(270),
                    clockwise: false
                )
                
                path.addLine(to: .init(x: rect.maxX, y: rect.midY))
                path.addLine(to: .init(x: rect.maxX, y: rect.maxY))
                path.addLine(to: .init(x: rect.minX, y: rect.maxY))
            }
        }
    }
}
