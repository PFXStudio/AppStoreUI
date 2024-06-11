//
//  FollowCell.swift
//  SUPlayground
//
//  Created by AsGuard on 6/2/24.
//

import SwiftUI

struct FollowCell: View {
    var body: some View {
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
            }
            Divider()
        }
        .padding()
    }
}

#Preview {
    FollowCell()
}
