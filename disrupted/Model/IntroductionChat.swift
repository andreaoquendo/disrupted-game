import SwiftUI

enum ChatBubbleType {
    case protagonist, other, scene, option
}

enum Choice {
    case def, notBad, notKnow, goodBolo, badBolo, notAchieve, whoCame, stillNotKnow, goodEnding, badEnding, loser
}

struct TextBubbleGenerator {
    
    func introGenerator() -> [ChatBubble] {
        let textBubblesMade: [ChatBubble] = [
            ChatBubble(type: .protagonist, text: "O que?", isChoosingTime: false, showName: true),
            ChatBubble(type: .protagonist, text: "O que aconteceu?", isChoosingTime: false, showName: false),
            ChatBubble(type: .protagonist, text: "Onde estou?", isChoosingTime: false, showName: false),
            
            ChatBubble(type: .other, text: "Olá", isChoosingTime: false, showName: true),
            ChatBubble(type: .other, text: "Tente manter a calma", isChoosingTime: false, showName: false),
            ChatBubble(type: .other, text: "O que vou te dizer agora costuma ser um choque", isChoosingTime: false, showName: false),
            ChatBubble(type: .other, text: "...", isChoosingTime: false, showName: false),
            ChatBubble(type: .other, text: "Você morreu", isChoosingTime: false, showName: false),
            ChatBubble(type: .other, text: "Está no limbo", isChoosingTime: false, showName: false),
            ChatBubble(type: .other, text: "Mas não é tão ruim quanto parece", isChoosingTime: false, showName: false),
            ChatBubble(type: .other, text: "Só preciso de algumas informações simples e tudo irá ficar bem", isChoosingTime: false, showName: false),
            ChatBubble(type: .other, text: "Qual o seu nome?", isChoosingTime: false, showName: false),
            
            ChatBubble(type: .protagonist, text: "C-como assim eu morri?", isChoosingTime: false, showName: true),
            
            ChatBubble(type: .other, text: "Você morreu", isChoosingTime: false, showName: true),
            ChatBubble(type: .other, text: "Qual o seu nome?", isChoosingTime: false, showName: false),
            
            ChatBubble(type: .protagonist, text: "Meu nome é...", isChoosingTime: false, showName: true),
            ChatBubble(type: .protagonist, text: "Meu nome é...", isChoosingTime: false, showName: false),
            ChatBubble(type: .protagonist, text: "Eu", isChoosingTime: false, showName: true),
            ChatBubble(type: .protagonist, text: "não lembro", isChoosingTime: false, showName: false),
            
            
            ChatBubble(type: .other, text: "De novo não...", isChoosingTime: false, showName: true),
            
            ChatBubble(type: .protagonist, text: "O que?", isChoosingTime: false, showName: true),
            ChatBubble(type: .protagonist, text: "Você não sabe meu nome?", isChoosingTime: false, showName: false),
            
            ChatBubble(type: .other, text: "Sempre deixam os casos mais difíceis pra mim...", isChoosingTime: false, showName: true),
            
            ChatBubble(type: .protagonist, text: "Como assim?", isChoosingTime: false, showName: true),
            
            ChatBubble(type: .other, text: "Não sei o seu nome", isChoosingTime: false, showName: true),
            ChatBubble(type: .other, text: "Não sei nada sobre você", isChoosingTime: false, showName: false),
            ChatBubble(type: .other, text: "Mas preciso de algumas informações para que você possa sair do limbo e poder morrer em paz", isChoosingTime: false, showName: false),
            ChatBubble(type: .other, text: "Suas memórias devem ter se perdido no caminho pra cá", isChoosingTime: false, showName: false),
            ChatBubble(type: .other, text: "E a não ser que você queira ser consumido pelas sombras, é melhor você recuperar elas logo", isChoosingTime: false, showName: false),
            
            ChatBubble(type: .protagonist, text: "O que acontece se eu for consumido pelas sombras?", isChoosingTime: false, showName: true),
            
            ChatBubble(type: .other, text: "Olha… é melhor que você não saiba… o ultimo q me fez essa pergunta surtou e não foi nada legal", isChoosingTime: false, showName: true),
            
            ChatBubble(type: .protagonist, text: "E o que eu preciso fazer pra recuperar minhas memórias?", isChoosingTime: false, showName: true),
            
            ChatBubble(type: .other, text: "Vamo lá…", isChoosingTime: false, showName: true),
            ChatBubble(type: .other, text: "Na teoria é simples…", isChoosingTime: false, showName: false),
            ChatBubble(type: .other, text: "Você vai ter que entrar no túnel da sua vida, e encontrar os três fragmentos de memória que se perderam.", isChoosingTime: false, showName: false),
            
            ChatBubble(type: .protagonist, text: "E como eu faço isso?", isChoosingTime: false, showName: true),
            
            ChatBubble(type: .other, text: "É aí que começa a parte complicada, é diferente pra cada pessoa", isChoosingTime: false, showName: true),
            ChatBubble(type: .other, text: "Não sei. Você vai ter que descobrir. Nunca entrei e não posso entrar no túnel da vida.", isChoosingTime: false, showName: false),
            ChatBubble(type: .other, text: "Só posso te ver na entrada e na saída.", isChoosingTime: false, showName: false),
            
            ChatBubble(type: .protagonist, text: "Treme", isChoosingTime: false, showName: true),
            
            ChatBubble(type: .other, text: "Vou abrir a porta pra você. Nosso tempo já está se acabando.", isChoosingTime: false, showName: true),
            ChatBubble(type: .other, text: "Seja rápido.", isChoosingTime: false, showName: false),
            ChatBubble(type: .other, text: "E lembre-se", isChoosingTime: false, showName: false),
            ChatBubble(type: .other, text: "Jamais deixe que as sombras te consumam", isChoosingTime: false, showName: false),
            
            ChatBubble(type: .protagonist, text: "MAS!!", isChoosingTime: false, showName: true),
        ]
        
        return textBubblesMade
    }
    
    func firstChatGenerator() -> [ChatBubble]{
        let textBubblesMade: [ChatBubble] = [
            ChatBubble(type: .other, text: "Todo mundo aí?", isChoosingTime: false, showName: true, name: "Luli"),
            
            ChatBubble(type: .other, text: "Ainda no ônibus", isChoosingTime: false, showName: true, name: "Isaac"),
            ChatBubble(type: .other, text: "O .. disse que tá sem internet, só vai chegar em casa daqui um tempo", isChoosingTime: false, showName: false, name: "Isaac"),
            
            ChatBubble(type: .protagonist, text: "Oi?", isChoosingTime: false, showName: true),
            
            ChatBubble(type: .other, text: "Finalmente uma mensagem sua!", isChoosingTime: false, showName: true, name: "Luli"),
            ChatBubble(type: .other, text: "se divertiu hoje?", isChoosingTime: false, showName: false, name: "Luli"),
            
            ChatBubble(type: .protagonist, text: "não foi ruim", isChoosingTime: true, choice: .notBad, showName: true),
            ChatBubble(type: .protagonist, text: "não tenho ideia de quem são vocês", isChoosingTime: true, choice: .notKnow, showName: true),
            
            ChatBubble(type: .other, text: "A gente se empenha pra fazer a melhor festa de aniversário do século e ganha um:", isChoosingTime: false, choiceMade: .notBad, showName: true, name: "Isaac"),
            ChatBubble(type: .other, text: "nÃo fOi rUiM", isChoosingTime: false, choiceMade: .notBad, showName: true, name: "Isaac"),
            ChatBubble(type: .other, text: "tanto faz", isChoosingTime: false, showName: false, name: "Isaac"),
            ChatBubble(type: .other, text: "pelo menos teve bolo", isChoosingTime: false, showName: false, name: "Isaac"),
            
            ChatBubble(type: .other, text: "o bolo tava muito gostoso", isChoosingTime: false, showName: false, name: "Luli"),
            
            ChatBubble(type: .protagonist, text: "só de me lembrar me dá água na boca", isChoosingTime: true, choice: .goodBolo, showName: true),
            ChatBubble(type: .protagonist, text: "não curti muito", isChoosingTime: true, choice: .badBolo, showName: true),
            
            ChatBubble(type: .other, text: "Ainda bem né", isChoosingTime: false, choiceMade: .goodBolo, showName: true, name: "Luli"),
            ChatBubble(type: .other, text: "pelo menos o humor dele tá melhor agora kekek", isChoosingTime: false, choiceMade: .goodBolo, showName: false, name: "Luli"),
            ChatBubble(type: .other, text: "nem passei a foto pra vocês né?", isChoosingTime: false, choiceMade: .goodBolo, showName: false, name: "Luli"),
            
            ChatBubble(type: .scene, text: "[ Sua internet caiu ]", isChoosingTime: false, showName: true, name: "Luli"),
            ChatBubble(type: .scene, text: "[ Não tem mais chances ]", isChoosingTime: false, showName: true, name: "Luli"),
            
            ChatBubble(type: .other, text: "você tá bem engraçadinho hoje, né? a luli se esforçou muito pra fazer essa festa pra você", isChoosingTime: false, choiceMade: .badBolo, showName: true, name: "Isaac"),
            ChatBubble(type: .other, text: "ignora isso. eu tenho certeza de que ele curtiu", isChoosingTime: false, choiceMade: .badBolo, showName: true, name: "Luli"),
            
            ChatBubble(type: .other, text: "beleza", isChoosingTime: false, choiceMade: .badBolo, showName: true, name: "Isaac"),
            ChatBubble(type: .other, text: "depois a gente conversa sobre isso, vou dormir", isChoosingTime: false, choiceMade: .badBolo, showName: true, name: "Isaac"),
            
            ChatBubble(type: .scene, text: "[ Todos sairam do chat ]", isChoosingTime: false, showName: true, name: "Luli"),
            ChatBubble(type: .scene, text: "[ Você não conseguiu o fragmento ]", isChoosingTime: false, choice: .loser, showName: true, name: "Luli"),
            
            ChatBubble(type: .other, text: "hahaha. engraçadinho.", isChoosingTime: false, choiceMade: .notKnow, showName: true, name: "Luli"),
            ChatBubble(type: .other, text: "seu senso de humor é ótimo", isChoosingTime: false, choiceMade: .notKnow, showName: true, name: "Isaac"),
            ChatBubble(type: .other, text: "a gente se esforçou muito pra criar aquilo pra você", isChoosingTime: false, choiceMade: .notKnow, showName: true, name: "Luli"),
            ChatBubble(type: .other, text: "você não tem muitos amigos, então foi difícil achar todo mundo", isChoosingTime: false, choiceMade: .notKnow, showName: false, name: "Luli"),
            
            ChatBubble(type: .protagonist, text: "eu to falando sério, quem são voces", isChoosingTime: true, choice: .stillNotKnow, showName: true),
            ChatBubble(type: .protagonist, text: "quem foi mesmo?", isChoosingTime: true, choice: .whoCame, showName: true),
            
            // Still noy know
            ChatBubble(type: .other, text: "você tá bem engraçadinho hoje, né? a luli se esforçou muito pra fazer essa festa pra você", isChoosingTime: false, choiceMade: .stillNotKnow, showName: true, name: "Isaac"),
            ChatBubble(type: .other, text: "ignora isso. eu tenho certeza de que ele curtiu", isChoosingTime: false, showName: true, name: "Luli"),
            
            ChatBubble(type: .other, text: "beleza", isChoosingTime: false, showName: true, name: "Isaac"),
            ChatBubble(type: .other, text: "depois a gente conversa sobre isso, vou dormir", isChoosingTime: false, showName: true, name: "Isaac"),
            
            ChatBubble(type: .scene, text: "[ Todos sairam do chat ]", isChoosingTime: false, showName: true, name: "Luli"),
            ChatBubble(type: .scene, text: "[ Você não conseguiu o fragmento ]", isChoosingTime: false, choice: .loser, showName: true, name: "Luli"),
            
            // Who came?
            ChatBubble(type: .other, text: "sua memória é horrível", isChoosingTime: false, choiceMade: .whoCame, showName: true, name: "Isaac"),
            ChatBubble(type: .other, text: "foi a gente, seu primo juliano, o Oliver, a Alice e o Theo.", isChoosingTime: false, showName: true, name: "Luli"),
            ChatBubble(type: .other, text: "A Chloe não conseguiu ir, mas disse que ia te mandar um presente", isChoosingTime: false, showName: false, name: "Luli"),
            
            ChatBubble(type: .protagonist, text: "foi muito divertido!", isChoosingTime: true, choice: .goodEnding, showName: true),
            ChatBubble(type: .protagonist, text: "quem é chloe?", isChoosingTime: true, choice: .goodEnding, showName: true),
            
            // Final feliz
            ChatBubble(type: .other, text: "Não é??", isChoosingTime: false, choiceMade: .goodEnding, showName: true, name: "Luli"),
            ChatBubble(type: .other, text: "eu amei organizar, sabia que você ia adorar um flashmob", isChoosingTime: false, choiceMade: .goodEnding, showName: false, name: "Luli"),
            ChatBubble(type: .other, text: "você merece tudo", isChoosingTime: false, choiceMade: .goodEnding, showName: false, name: "Luli"),
            ChatBubble(type: .other, text: "aqui tá uma fotinho nossa!", isChoosingTime: false, choiceMade: .goodEnding, showName: false, name: "Luli"),
            
            ChatBubble(type: .scene, text: "[ fotinho ]", isChoosingTime: false, showName: true, name: "Luli"),
            
            
            // Final ruim
            ChatBubble(type: .other, text: "você não tá falando sério é?", isChoosingTime: false, choiceMade: .badEnding, showName: true, name: "Isaac"),
            ChatBubble(type: .other, text: "se ele quer esquecer ela deixa ele", isChoosingTime: false, showName: true, name: "Luli"),
            ChatBubble(type: .other, text: "é todo dia isso...", isChoosingTime: false, showName: true, name: "Isaac"),
            ChatBubble(type: .other, text: "falou", isChoosingTime: false, showName: false, name: "Isaac"),
            ChatBubble(type: .other, text: "acho que vou saindo também", isChoosingTime: false, showName: true, name: "Luli"),
            ChatBubble(type: .scene, text: "[ Todos sairam do chat ]", isChoosingTime: false, showName: true, name: "Luli"),
            ChatBubble(type: .scene, text: "[ Você não conseguiu o fragmento ]", isChoosingTime: false, choice: .loser, showName: true, name: "Luli"),
        ]
        
        return textBubblesMade
    }

}

//icon de paisagem:
//- você não tá falando sério é?
//
//icon de gatinho:
//- se ele quer esquecer ela deixa ele
//
//icon de paisagem:
//- é todo dia isso...
//- falou
//
//icon de gatinho:
//- acho que vou saindo também
