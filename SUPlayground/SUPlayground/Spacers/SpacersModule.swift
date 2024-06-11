//
//  SpacersModule.swift
//  SUPlayground
//
//  Created by AsGuard on 6/6/24.
//

import SwiftUI

struct SpacersModule: View {
    var body: some View {
        VStack {
            Text("Spacers Module")
            HStack {
                Text("Horizontal")
                Spacer()
                    .frame(height: 24)
                    .background(.blue)
            }

            HStack {
                Spacer()
                    .frame(height: 24)
                    .background(.blue)
                Text("Horizontal")
            }

            HStack {
                Spacer()
                    .frame(width:10, height: 24)
                    .background(.blue)
                Text("Horizontal")
                Spacer()
                Text("Horizontal")
                Spacer()
                    .frame(width:10, height: 24)
                    .background(.blue)
            }

            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Image("team-1-800x800")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Lewis.Ham")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Lewis Handsome")
                            .font(.subheadline)
                    }
                    Spacer()
                    Image(systemName: "paperplane.circle.fill")
                        .foregroundColor(.blue)
                }

                Divider()
                HStack {
                    Image("team-1-800x800")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Lewis.Ham")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Lewis Handsome")
                            .font(.subheadline)
                    }
                    
                    Spacer()
                    Image(systemName: "paperplane.circle.fill")
                        .foregroundColor(.blue)

                }
                Divider()
            }
            .padding()

            
            
            Spacer()
                .frame(width: 24)
                .background(.red)
            Text("Spacers Module")
        }
    }
}

#Preview {
    SpacersModule()
}
