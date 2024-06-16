//
//  ControlFlowModule.swift
//  SUPlayground
//
//  Created by AsGuard on 6/16/24.
//

import SwiftUI

struct ControlFlowModule: View {
    @State var showImage = true
    @State var didLike = false
    @State var likes = 500
    var body: some View {
//        if showImage {
//            Image(systemName: "heart.fill")
//                .resizable()
//                .frame(width: 64, height: 64)
//                .foregroundColor(.red)
//        } else {
//            Text("No image to show..")
//        }
        
        VStack {
            Button {
                didLike.toggle()
                likes += 1
            } label: {
                Image(systemName: didLike ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .foregroundColor(didLike ? .red : .black)
            }
            
            Text("\(likes) likes")
                .font(.headline)
        }
    }
}

#Preview {
    ControlFlowModule()
}
