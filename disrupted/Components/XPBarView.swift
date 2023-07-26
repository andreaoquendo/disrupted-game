//
//  XPBarView.swift
//  disrupted
//
//  Created by Andrea Oquendo on 25/07/23.
//

import SwiftUI

struct XPBarView: View {
    var progress: CGFloat // Progress value between 0 and 1
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(width: 200, height: 30)
                .foregroundColor(Color.gray) // Default color of the XP bar
            
            Rectangle()
                .frame(width: min(self.progress * 200, 200), height: 30)
                .foregroundColor(Color("xpColor")) // Color of the filled XP bar
        }
        .cornerRadius(8)
    }
}

struct XPBarView_Previews: PreviewProvider {
    static var previews: some View {
        XPBarView(progress: 0.8)
    }
}
