//
//  ContentView.swift
//  ReferralForm
//
//  Created by Sraavan Chevireddy on 8/1/20.
//  Copyright © 2020 Saven Developers Office. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var progress : CGFloat = 0
    @State var heading : String = ""
    
    var body: some View {
        VStack{
            NavigationReferralBar(formFilledProgress: 70)
            
            // Preview Space
            HStack{
                // Save Draft button
                Button(action:{
                        print("Save draft button tapped!")
                }){
                    Text("Save Draft")
                        .font(.custom("Arial Rounded MT Bold", size: 20))
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                    .cornerRadius(25)
                }
                Spacer()
                // Preview Button
                Button(action:{
                    print("This is preview button!")
                }){
                    HStack{
                        Text("Preview form")
                        .font(.custom("Arial Rounded MT Bold", size: 20))
                        .foregroundColor(Color.orange)
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.orange)
                    }
                .padding()
                }
            }
            .padding(5)
            .background(Color.black.opacity(0.1))
            .cornerRadius(35)
            
            // Progress View
            CircularProgressBar(progress: $progress,heading: $heading)
                        
            
            Button(action:{
                self.progress += 0.05
                self.heading = "\(Int(self.progress*100))"
            }){
                Text("Increment")
            }
            
            HeadingView(title: "Claimant Information")
            
            
            Spacer()
        }
        .padding(.top, UIApplication.shared.windows.first!.safeAreaInsets.top)
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
