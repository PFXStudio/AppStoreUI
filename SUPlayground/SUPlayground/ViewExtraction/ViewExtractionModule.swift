//
//  ViewExtractionModule.swift
//  SUPlayground
//
//  Created by AsGuard on 6/16/24.
//

import SwiftUI

struct ViewExtractionModule: View {
    
    var body: some View {
        ScrollView {
            ForEach(0 ... 5, id: \.self) { index in
                DriverRowView(driverName: "lewis", imageName: "team-1-800x800", teamName: "Apple")
            }
        }
        .padding()
    }
}

struct DriverRowView: View {
    let driverName: String
    let imageName: String
    let teamName: String
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 48, height: 48)
            .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(driverName)
                    .fontWeight(.semibold)
                Text(teamName)
                    .foregroundColor(.gray)
            }
            .font(.subheadline)
            
            Spacer()
        }
    }
}


#Preview {
    ViewExtractionModule()
}
