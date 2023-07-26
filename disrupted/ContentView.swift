import SwiftUI



struct ContentView: View {
    @State var textBubbles: [ChatBubble] = []
    @State var count = 0
    @State var scrollToBottom: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(){
                Spacer()
                XPBarView(progress: 0.7)
                    .frame(height: 20)
                    .padding(20)
            }
            .foregroundColor(.brown)
            .frame(maxWidth: .infinity)
            .padding(8)
            .background(Color("barColor"))
            
            
            ScrollViewReader{ value in
                
                ScrollView(){
                    
                    VStack(spacing: 8){
                        ForEach(textBubbles) { bubble in
                           bubble
                                .id(bubble.id)
                        }
                        .onChange(of: textBubbles.count){ _ in
                            value.scrollTo(textBubbles.last?.id)
                        }
                    }
                    .padding(8)
                
                }
                .padding(0)
                            
            }
            
            
            Spacer()
            
        }
        .background(Color("bgColor"))
        .padding(0)
        .onTapGesture {
            textBubbles.append(
                ChatBubble(type: .protagonist, text: String(count))
            )
            count+=1
            scrollToBottom = true
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
