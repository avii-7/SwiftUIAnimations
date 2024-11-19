//
//  RingsAnimation.swift
//  SwiftUIAnimations
//
//  Created by Arun on 09/11/24.
//

import SwiftUI

struct RingsAnimation: View {
    
    @State private var drawingStroke = false
    
    private let animation = Animation.easeOut(duration: 3).repeatForever(autoreverses: false).delay(0.5)
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            ring(for: .strawberry)
                .frame(width: 164)
            ring(for: .lime)
                .frame(width: 128)
            ring(for: .ice)
                .frame(width: 92)
        }
        .animation(animation, value: drawingStroke)
        .onAppear {
            drawingStroke.toggle()
        }
    }
}

extension RingsAnimation {
    
    func ring(for color: Color) -> some View {
        // BG Ring
        Circle()
            .stroke(style: StrokeStyle(lineWidth: 16))
            .foregroundStyle(.tertiary)
            .overlay {
                // FG Ring
                Circle()
                    .trim(from: 0, to: drawingStroke ? 1 : .leastNonzeroMagnitude)
                    .stroke(color.gradient, style: StrokeStyle(lineWidth: 16, lineCap: .round))
            }
            .rotationEffect(.degrees(-90))
    }
}

#Preview {
    RingsAnimation()
}

extension Color {
    static var strawberry: Color { Color(#colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1)) }
    static var lime: Color { Color(#colorLiteral(red: 0.5563425422, green: 0.9793455005, blue: 0, alpha: 1)) }
    static var ice: Color { Color(#colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1)) }
}
