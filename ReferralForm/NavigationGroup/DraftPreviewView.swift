//
//  DraftPreviewView.swift
//  ReferralForm
//
//  Created by Sraavan Chevireddy on 8/1/20.
//  Copyright © 2020 Saven Developers Office. All rights reserved.
//

import SwiftUI

struct DraftPreviewView: View {
    var body: some View {
        HStack{
            // Save Draft View
            Button(action: {
                print("Save Draft Clicked!")
            }){
                Text("Save Draft")
                .padding(4)
                    .foregroundColor(.white)
                    .background(Color.green)
                .cornerRadius(20)
                    .font(.custom("Arial Rounded MT Bold", size: 19))
            }
            Spacer()
            // Preview Button Clicked
            Button(action : {
                print("This is preview button!")
            }){
                HStack{
                    Text("Preview")
                        .font(.custom("Arial Rounded MT Bold", size: 20))
                    .foregroundColor(Color("orangeColor"))
                    Image(systemName: "chevron.right")
                    .foregroundColor(Color("orangeColor"))
                }.padding()
            }
        }
        .background(Color.white)
        .cornerRadius(50)
    }
}

struct DraftPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        DraftPreviewView()
    }
}
