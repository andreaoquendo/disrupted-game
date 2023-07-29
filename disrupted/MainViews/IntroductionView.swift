import SwiftUI

enum Cena {
    case intro, first, death, champions
}

struct IntroductionView: View {
    @State var textBubbles: [ChatBubble] = []
    var t = TextBubbleGenerator()
    @State var textBubblesMade: [ChatBubble] = []
    @State var count = 0
    @State var scrollToBottom: Bool = false
    @State var choices: [Choice] = []
    @State var choosingTime: Bool = false
    @State var chosenMade: Bool = false
    @State var showDetails: Bool = false
    @State var transitionScreen: Bool = false
    @State var currentView: Cena = .intro
    
    let soundManager = SoundManager()
    
    func getRespectiveChat() -> [ChatBubble]{
        switch currentView {
        case .intro:
            return t.introGenerator()
        case .first:
            return t.firstChatGenerator()
        case .champions:
            return []
        case .death:
            return []
        }
    }
    
    func stop() -> Bool{
        
        if count < textBubblesMade.count && (textBubblesMade[count].choiceMade == nil || textBubblesMade[count].choiceMade == choices.last) {
            return false
        }
        
        soundManager.stop(sound: .background_noise)
        if currentView == .intro {
            transitionScreen = true
            currentView = .first
            textBubbles = []
            count = 0
            textBubblesMade = t.firstChatGenerator()
            soundManager.play(sound: .seven)
        } else if currentView == .first {
            print(textBubbles.last?.choice ?? "none")
            if textBubbles.last?.choice == .loser {
                transitionScreen = true
                currentView = .death
                soundManager.play(sound: .seven)
            }
            else {
                transitionScreen = true
                currentView = .champions
                soundManager.play(sound: .champions)
            }
            
        }
        
        return true
    }
    
    func showPossibilities() -> Void {
        textBubbles.append(textBubblesMade[count])
        textBubbles.append(textBubblesMade[count + 1])
    }
    
    func respectiveDialogue(){
        for textBubble in textBubblesMade {
            if textBubble.choiceMade == choices.last {
                textBubbles.append(textBubble)
                break
            }
        }
    }
    
    func choosingAction(bubble: ChatBubble){
        textBubbles.removeLast()
        textBubbles.removeLast()
        textBubbles.append(bubble)
    }
    
    func getChoiceIndex(){
        for textBubble in textBubblesMade[(count + 1)...] {
            if textBubble.choiceMade == choices.last {
                count = textBubblesMade[(count + 1)...].firstIndex(of: textBubble) ?? -1
                return
            }
        }
    }
    
    var body: some View {
        
        if transitionScreen {
            ChapterView(sceneName: currentView)
                .onTapGesture {
                    if currentView != .death {
                        transitionScreen = false
                        soundManager.stop(sound: .seven)
                    }
                }
        } else {
            
            VStack(spacing: 0) {
                VStack(){
                    Spacer()
                        .frame(height:50)
                    Text("Chatty Chat Chat")
                        .bold()
                        
                }
                .foregroundColor(.white.opacity(0.5))
                .frame(maxWidth: .infinity)
                .padding(20)
                .background(Color("barColor"))
                
                
                ScrollViewReader{ value in
                    ScrollView(){
                        VStack(spacing: 8){
                            ForEach(textBubbles) { bubble in
                                if choosingTime {
                                    bubble
                                        .id(bubble.id)
                                        .onTapGesture {
                                            if (bubble.choice != nil) {
                                                choices.append(bubble.choice ?? .def)
                                            }
                                            getChoiceIndex()
                                            
                                            let b = bubble
                                            choosingAction(bubble: b)
                                            choosingTime = false
                                            chosenMade = true
                                            soundManager.play(sound: .popping)
                                        }
                                } else {
                                    bubble
                                        .id(bubble.id)
                                }
                                
                            }
                            .onChange(of: textBubbles.count){ _ in
                                value.scrollTo(textBubbles.last?.id)
                            }
                        }
                        .frame(
                            maxHeight: .infinity,
                            alignment: .bottom
                        )
                        .padding(.horizontal, 0)
                        .padding(.vertical, 8)
                        
                    }
                    
                    HStack() {
                        Image(systemName: "folder.circle")
                            .font(.system(size: 40))
                        Spacer()
                        Image(systemName: "person.circle")
                            .font(.system(size: 40))
                        
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 100)
                    .padding(.vertical, 12)
                    .background(Color("barColor"))
                    
                }
                
                
                
            }
            .ignoresSafeArea()
            .font(Font.custom("Andale Mono", size: 16))
            .background(Color("bgColor"))
            .padding(0)
            .onTapGesture {
                print("1, \(stop())")
                if stop() == true || choosingTime == true { return; }
                
                print("2")
                if textBubblesMade[count].isChoosingTime == true { showPossibilities(); choosingTime = true }
                else {
                    textBubbles.append(textBubblesMade[count])
                    count+=1
                    soundManager.play(sound: .popping)
                    print("3")
                }
                
                print("4")
            }
            .opacity(showDetails ? 1 : 0)
            .onAppear {
                soundManager.play(sound: .door_slam)
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    soundManager.playLoop(sound: .background_noise)
                    withAnimation(.easeIn(duration: 0.5)) {
                        showDetails = true
                    }
                }
                textBubblesMade = getRespectiveChat()
                
                
            }
        }
    }
}

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
    }
}
