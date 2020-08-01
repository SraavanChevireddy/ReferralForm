//
//  HeadingView.swift
//  ReferralForm
//
//  Created by Sraavan Chevireddy on 8/1/20.
//  Copyright © 2020 Saven Developers Office. All rights reserved.
//

import SwiftUI

struct HeadingView: View {
    var title : String
    var body: some View {
        VStack{
            HStack{
                Text(title)
                .foregroundColor(Color("textColor"))
                .font(.custom("Arial Rounded MT Bold", size: 19))
                Spacer()
                Image(systemName: "chevron.down")
                    .foregroundColor(Color.orange)
            }
            .padding()
            Rectangle()
                .frame(height: 8)
                .foregroundColor(Color("orangeColor"))
        }
        .background(Color("Color"))
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(title: "Claimant Information")
    }
}
