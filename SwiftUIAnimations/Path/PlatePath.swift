//
//  PlatePath.swift
//  SwiftUIAnimation
//
//  Created by Arun Kumar on 19/11/24.
//

import SwiftUI

struct PlatePath: View {
    var body: some View {
        GeometryReader { geo in
            Path { path in
                path.move(to: CGPoint(x: 200, y: 100))
                path.addLine(to: CGPoint(x: 100, y: 300))
                path.addLine(to: CGPoint(x: 300, y: 300))
                path.addLine(to: CGPoint(x: 200, y: 100))
                path.closeSubpath()
            }
            .stroke(.black, style: .init(lineWidth: 5))
        }
    }
}

#Preview {
    PlatePath()
        .background(Color.blue)
}
