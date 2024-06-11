//
//  PaddingModule.swift
//  SUPlayground
//
//  Created by AsGuard on 6/2/24.
//

import SwiftUI

struct PaddingModule: View {
    var body: some View {
        VStack {
            Text("Hello, World, How are you doing today?")
                .background(.blue)
                .padding(8)
                .background(.pink)
            
            Text("Horizontal Padding")
                .padding(.horizontal, 44)
                .background(.cyan)
            
            Text("vertical Padding")
                .padding(.vertical, 22)
                .background(.orange)
            
            Text("Leading Padding")
                .padding(.leading, 20)
                .background(.blue)
            
            Text("Trailing Padding")
                .padding(.trailing, 20)
                .background(.red)
            
        }
    }
}

#Preview {
    PaddingModule()
}
