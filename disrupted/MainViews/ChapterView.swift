//
//  ChapterView.swift
//  disrupted
//
//  Created by Andrea Oquendo on 28/07/23.
//

import SwiftUI

struct ChapterView: View {
    
    var sceneName: Cena
    
    func getImage(s: Cena) -> String {
        if s == .first {
            return "chapter1"
        } else if s == .death {
            return "loser"
        }
        return "winner"
    }
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Image(getImage(s: self.sceneName))
                .resizable()
                .frame(
                    width: 300,
                    height:300
                )
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(.black)
    }
}

struct ChapterView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterView(sceneName: .death)
    }
}
