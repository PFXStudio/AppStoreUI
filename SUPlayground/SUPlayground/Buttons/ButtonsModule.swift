//
//  ButtonsModule.swift
//  SUPlayground
//
//  Created by AsGuard on 6/16/24.
//

import SwiftUI

struct ButtonsModule: View {
    @State var rectangleColor = Color.blue
    @State var title = "Hello"
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 200, height: 100)
                .cornerRadius(10)
                .foregroundColor(rectangleColor)
            Text(title)
                .font(.title)
            
            Button("Click me") {
                print(">>> didTap Button")
                rectangleColor = rectangleColor == .blue ? .pink : .blue
                title = "Basic Button"
            }
            .padding()
            
            Button {
                rectangleColor = .purple
                title = "Custom Button"
            } label: {
                Text("Custom Button")
                    .font(.headline)
                    .frame(width: 360, height: 48)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button {
                rectangleColor = .red
                title = "ImageButton"
            } label: {
                Image(systemName: "heart.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.red)
            }
            .padding()
        }
    }
}

#Preview {
    ButtonsModule()
}
