//
//  LinearProgressBar.swift
//  ReferralForm
//
//  Created by Sraavan Chevireddy on 8/1/20.
//  Copyright © 2020 Saven Developers Office. All rights reserved.
//

import SwiftUI

struct LinearProgressBar: View {
    var progressValue : CGFloat = 100
    
    var body: some View {
        ZStack(alignment: .leading){
            Capsule()
                .fill(Color.white)
            .frame(height:  13)
            Capsule()
                .fill(Color.green)
                .frame(width : calculatePercentage(),height:13)
        }
    }
    /**
     * Calculates the progress of the linear progress bar depending on the width of the UIScreen.
     */
    func calculatePercentage()->CGFloat{
        let originalWidth = UIScreen.main.bounds.width - 36
        let progressPercentage = (originalWidth * progressValue)/100
        return progressPercentage
    }
}

struct LinearProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        LinearProgressBar()
    }
}
