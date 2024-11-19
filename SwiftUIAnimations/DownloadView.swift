//
//  DownloadView.swift
//  SwiftUIAnimation
//
//  Created by Arun Kumar on 19/11/24.
//

import SwiftUI

struct DownloadView: View {
    
    let diameter = 200.0
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5)
            .frame(width: diameter, height: diameter)
    }
}

#Preview {
    DownloadView()
}
