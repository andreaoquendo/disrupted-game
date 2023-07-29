import SwiftUI



struct ContentView: View {
    @State var textBubbles: [ChatBubble] = []
    @State var count = 0
    @State var scrollToBottom: Bool = false
    
    var body: some View {
      IntroductionView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
