//
//  CircularProgressBar.swift
//  ReferralForm
//
//  Created by Sraavan Chevireddy on 8/1/20.
//  Copyright © 2020 Saven Developers Office. All rights reserved.
//

import SwiftUI

struct CircularProgressBar: View {
    @Binding var progress : CGFloat
    @Binding var heading : String
    
    var body: some View {
        VStack(alignment: .leading){
            ZStack(alignment: .center){
                // Master Circle
                Circle()
                    .stroke(lineWidth: 2.5)
                    .opacity(0.3)
                    .foregroundColor(Color("orangeColor"))
                // Progress Circle
                Circle()
                    .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                    .stroke(style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                    .foregroundColor(Color("orangeColor"))
                    .rotationEffect(Angle(degrees: 270.0))
                    .animation(.linear)
                
                Text(heading)
                    .font(.custom("Arial Rounded MT Bold", size: 20))
            }
            .frame(width: 50, height: 50, alignment: .leading)
            
            Text("Claimant Info")
                .frame(width: 100)
                .font(.custom("Arial Rounded MT Bold", size: 18))
            
            
        }
    }
}
