//
//  DownloadView.swift
//  SwiftUIAnimation
//
//  Created by Arun Kumar on 19/11/24.
//

import SwiftUI

struct DownloadView: View {
    
    let diameter = 200.0
    
    @State private var isAnimating = false
    
    var body: some View {
        VStack (spacing: 0) {
            Image(systemName: "arrow.down")
                .font(.system(size: 40).bold())
                .offset(y: isAnimating ? 15: -15)
                .animation(.easeInOut(duration: 0.9).repeatForever(), value: isAnimating)
            RoundedRectangle(cornerRadius: 9)
                .trim(from: 0, to: 0.5)
                .stroke(lineWidth: 5)
                .frame(width: 50, height: 30)
        }
        .padding(30)
        .background(alignment: .center) {
            Circle()
                .stroke(lineWidth: 3)
        }
        .onAppear {
            isAnimating.toggle()
        }
                
    }
}

#Preview {
    DownloadView()
        .foregroundStyle(.blue)
}
