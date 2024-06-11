//
//  LoopsModule.swift
//  SUPlayground
//
//  Created by AsGuard on 6/6/24.
//

import SwiftUI

struct LoopsModule: View {
    let drivers: [String] = [
        "Lewis Hamilton",
        "Paul Hamilton",
        "Kevin Hamilton",
        "Rain Hamilton",
        "Max Hamilton",
        "Kakao Hamilton",
        "Bank Hamilton",
    ]
    var body: some View {
        VStack(spacing: 10) {
            ForEach(drivers, id: \.self) { driver in
                VStack(alignment: .leading, spacing: 12) {
                    HStack {
                        Image("team-1-800x800")
                            .resizable()
                            .frame(width: 64, height: 64)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading) {
                            Text(driver)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Text("Lewis Handsome")
                                .font(.subheadline)
                        }
                        Spacer()
                        Image(systemName: "paperplane.circle.fill")
                            .foregroundColor(.blue)
                    }

//                    Divider()
                }
            }
            
            Spacer()
            Text("Loop ended")
        }
        .padding()
    }
}

#Preview {
    LoopsModule()
}
