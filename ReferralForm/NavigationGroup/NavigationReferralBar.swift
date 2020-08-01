//
//  NavigationReferralBar.swift
//  ReferralForm
//
//  Created by Sraavan Chevireddy on 8/1/20.
//  Copyright © 2020 Saven Developers Office. All rights reserved.
//

import SwiftUI

struct NavigationReferralBar: View {
    
    @State var formFilledProgress = 0
    var body: some View {
        VStack(alignment: .leading){
            Text("Referral Form")
                .font(.custom("Arial Rounded MT Bold", size: 30))
                .foregroundColor(Color.black.opacity(0.6))
            
            HStack(){
                Text("Referral Completion: ")
                    .font(.body)
                    .bold()
                Spacer()
                Text("\(formFilledProgress) %")
                    .font(.custom("Arial Rounded MT Bold", size: 30))
                    .foregroundColor(Color.white)
                    .padding(.trailing, 10)
            }.padding(.top, 10)
            LinearProgressBar(progressValue: CGFloat(formFilledProgress))
        }
        .padding()
        .background(Color("orangeColor"))
    }
}

struct NavigationReferralBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationReferralBar()
    }
}
