//
//  DaisyFlower.swift
//  SwiftUIAnimations
//
//  Created by Arun on 22/11/24.
//

import SwiftUI

struct DaisyFlower: View {
    
    let petalColor: Color = .white
    
    let pistilColor: Color = .yellow
    
    var body: some View { flower }
    
    private let petalHeightRatio = 0.07
    
    private var flower: some View {
        GeometryReader { geo in
            let petalHeight = geo.size.height * petalHeightRatio
            let count = Int(ceil(1 / petalHeightRatio))
            ZStack {
                ForEach(1...count, id: \.self) { index in
                    Petal(height: petalHeight)
                        .rotationEffect(.degrees((Double(index) * Double((360 / count)))))
                        .foregroundStyle(petalColor)
                        .shadow(radius: 3, y: 3)
                }
            }
            .overlay { getPistil(rectHeight: geo.size.height) }
            .onAppear {
                print("Petal Height: \(petalHeight), Count: \(count)")
            }
        }
    }
    
    private func getPistil(rectHeight: CGFloat) -> some View {
        Circle()
            .foregroundStyle(pistilColor)
            .frame(width: rectHeight * 0.3, height: rectHeight * 0.3)
            .shadow(radius: 1, y: 3)
    }
    
//    private var stem: some View {
//        Text("he")
//    }
}

extension DaisyFlower {
    
    struct Petal: Shape {
        
        let height: CGFloat
        
        func path(in rect: CGRect) -> Path {
            Path { path in
                path.move(to: .init(x: rect.midX, y: rect.midY))
                path.addArc(
                    center: .init(x: rect.maxX - height, y: rect.midY),
                    radius: height,
                    startAngle: .degrees(-90),
                    endAngle: .degrees(90),
                    clockwise: false
                )
            }
        }
    }
}

#Preview {
    DaisyFlower()
        .frame(width: 100, height: 100)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 2).stroke(
                style: .init(
                    dash: [5]
                )
            )
        )
}
