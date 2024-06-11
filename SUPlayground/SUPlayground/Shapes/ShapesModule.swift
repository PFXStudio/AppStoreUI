//
//  ShapesModule.swift
//  SUPlayground
//
//  Created by AsGuard on 6/2/24.
//

import SwiftUI

struct ShapesModule: View {
    var body: some View {
        Circle()
            .stroke(lineWidth: 24)
//            .fill(.purple)
            .foregroundColor(.pink)
            .frame(width: 200, height: 200)
        
        Rectangle()
            .fill(.blue)
            .frame(width: 200, height: 100)
            .cornerRadius(10)
        
        Capsule()
            .fill(.cyan)
            .frame(width: 200, height: 64)
        
    }
}

#Preview {
    ShapesModule()
}
