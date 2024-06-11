//
//  StackModule.swift
//  SUPlayground
//
//  Created by AsGuard on 6/2/24.
//

import SwiftUI

struct StackModule: View {
    var body: some View {
        VStack(alignment: .center, spacing: 12) {
            ZStack {
                Rectangle()
                    .fill(.pink)
                    .frame(width: 200, height: 100)
                    .cornerRadius(10)
                Text("Hello, World!!")
                    .foregroundColor(.yellow)
                    .font(.headline)
            }
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 100)
                .cornerRadius(10)
            
            HStack(alignment: .bottom, spacing: 20) {
                VStack {
                    Rectangle()
                        .fill(.pink)
                        .frame(width: 100, height: 300)
                        .cornerRadius(10)
                    
                    Text("PINK")
                }
                VStack {
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 100, height: 200)
                        .cornerRadius(10)
                    Text("BLUE")
                }
                VStack {
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                    Text("PURPLE")
                }
            }
            ZStack(alignment: .topTrailing) {
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 200, height: 200)
                    .cornerRadius(10)
                Rectangle()
                    .fill(.black)
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                Rectangle()
                    .fill(.pink)
                    .frame(width: 50, height: 50)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    StackModule()
}
