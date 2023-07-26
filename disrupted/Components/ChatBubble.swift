//
//  ChatBubble.swift
//  disrupted
//
//  Created by Andrea Oquendo on 25/07/23.
//

import SwiftUI

enum ChatBubbleType {
    case protagonist, other, option
}



struct ChatBubble: View, Identifiable, Equatable, Hashable {
    var type: ChatBubbleType
    var text: String
    let id = UUID()
    
    var body: some View {
        
        switch(type){
        case .protagonist:
            HStack(alignment: .top){
                
                Spacer()
                
                VStack(alignment:.trailing, spacing: 4){
                    Text("Unknown  ")
                        .foregroundColor(.white)
                    Text(self.text)
                        .padding(8)
                        .background(
                            Rectangle()
//                                .frame(width: .infinity)
                                .foregroundColor(.gray)
                                .cornerRadius(8)
                        )
                }
                
                
                
            
                Circle()
                    .frame(
                        width: 50,
                        height: 50
                    )
            }
        case .other:
            HStack(alignment: .top, spacing: 8){
                
                Circle()
                    .frame(
                        width: 50,
                        height: 50
                    )
                
                VStack(alignment:.leading, spacing: 4){
                    Text("Unknown  ")
                        .foregroundColor(.white)
                    
                    HStack(){
                        
                    }
                    Text(self.text)
                        .padding(8)
                        .background(
                            Rectangle()
                                .frame(width: .infinity)
                                .foregroundColor(.gray)
                                .cornerRadius(8)
                        )
                }
                Spacer()
            }
            
        default:
            HStack(){
                Text("error")
            }
            
        }

        
    }
    
}

struct ChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubble(type: .protagonist, text: "Falou")
    }
}
