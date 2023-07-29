//
//  ChatBubble.swift
//  disrupted
//
//  Created by Andrea Oquendo on 25/07/23.
//


import SwiftUI

struct RoundedCornerShape: Shape {
    var corners: UIRectCorner
    var radius: CGFloat

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

struct ChatBubble: View, Identifiable, Equatable, Hashable {
    var type: ChatBubbleType
    var text: String
    let isChoosingTime: Bool
    var choiceMade: Choice? // Choice that was made to get here
    var choice: Choice?
    let showName: Bool
    var name: String = "Unknown "
    let id = UUID()
    
    var body: some View {
        
        switch(type){
        case .protagonist:
            HStack(alignment: .top){
                
                Spacer()
                
                VStack(alignment:.trailing, spacing: 0){
                    HStack(){
                        if showName == true {
                            Text("You ")
                                .foregroundColor(.white)
                                .font(.caption)
                        }
                        
                        Spacer()
                            .frame(width: 58)
                    }
                    
                    
                    HStack {
                        
                        Text(self.text)
                            .padding(8)
                            .background(
                                Rectangle()
                                    .stroke(Color.white, lineWidth: 1)
                                    .background(
                                        Rectangle()
                                            .foregroundColor(isChoosingTime ? .white.opacity(0.15) : Color("bubbleColor").opacity(0.15))
                                            
                                    )
                                
                            )
                            .foregroundColor(.white)
                            .lineLimit(nil)
                            .multilineTextAlignment(.leading)
                        
                        if showName {
                            
                            ZStack {
                                Circle()
                                    .foregroundColor(.gray) // Cor de fundo do círculo
                                    .frame(width: 50, height: 50) // Tamanho do círculo
                                
                                Image("you") // Substitua "sua_imagem" pelo nome da sua imagem no projeto
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle()) // Aplica o recorte da imagem ao círculo
                                    .frame(width: 50, height: 50) // Tamanho da imagem dentro do círculo
                            }
                
                        } else {
                            Spacer()
                                .frame(width: 58)
                        }
                    }
                    
                }
                
                
            }
            .padding(.horizontal, 8)
        case .other:
            HStack(alignment: .top, spacing: 8){
                
                if showName {
                    
                    if name == "Unknown "{
                        Circle()
                        .frame(
                            width: 50,
                            height: 50
                        )
                        .foregroundColor(.white)
                    } else {
                        ZStack {
                            Circle()
                                .foregroundColor(.gray) // Cor de fundo do círculo
                                .frame(width: 50, height: 50) // Tamanho do círculo
                            
                            Image(name) // Substitua "sua_imagem" pelo nome da sua imagem no projeto
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle()) // Aplica o recorte da imagem ao círculo
                                .frame(width: 50, height: 50) // Tamanho da imagem dentro do círculo
                        }
                    }
                    
                } else {
                    Spacer()
                        .frame(width: 50)
                }
                
                
                
                VStack(alignment:.leading, spacing: 4){
                    
                    if showName == true {
                        Text(name)
                            .foregroundColor(.white)
                            .font(.caption)
                    }

                    HStack(){
                        
                    }
                    Text(self.text)
                        .lineLimit(nil)
                        .multilineTextAlignment(.leading)
                        .padding(8)
                        .background(
                            Rectangle()
                                .stroke(Color.white, lineWidth: 1)
                                .background(
                                    Rectangle()
                                        .foregroundColor(Color("bubbleColor").opacity(0.15))
                                        
                                )
                            
                        )
                        .foregroundColor(.white)
                        
                }
                
                Spacer()
            }
            .padding(.horizontal, 8)
            
        case .scene:
            HStack {
                Spacer()
                Text(text)
                Spacer()
            }
            .font(.caption)
            .padding(4)
            .foregroundColor(.white)
            .background(.black)
            .frame(maxWidth: .infinity)
        default:
            HStack(){
                Text("error")
            }
            
        }

        
    }
    
}

struct ChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubble(type: .protagonist, text: "Falou", isChoosingTime: true, showName: true)
    }
}
