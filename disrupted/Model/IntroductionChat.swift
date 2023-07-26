import SwiftUI

struct Academers: Identifiable, Hashable {

    let id = UUID()
    let nome: String
    let hemisferio: String
    let nacao: String
    let formaDeGoverno: String
    let idioma: String
    let comunicacaoViolenta: Int

    static func populateAcademers() -> [Academers] {
        var academers: [Academers] = []
        let aless = Academers(nome: "aless", hemisferio: "Bondiana", nacao: "Terranova", formaDeGoverno: "Transhumanismo", idioma: "Palavras de afirmação", comunicacaoViolenta: 4)
        academers.append(aless)
        let anah = Academers(nome: "anah", hemisferio: "BondiBontardian", nacao: "Artemis", formaDeGoverno: "Poder plural", idioma: "PO que quiser falar", comunicacaoViolenta: 4)
        academers.append(anah)
        let barbroli = Academers(nome: "barbroli", hemisferio: "Bondiana", nacao: "Helvetia", formaDeGoverno: "Caos", idioma: "Bobajada", comunicacaoViolenta: 4)
        academers.append(barbroli)
        let broon = Academers(nome: "broon", hemisferio: "Boatardiana", nacao: "Maghenta", formaDeGoverno: "Monarquia Beyonce", idioma: "Gírias populares", comunicacaoViolenta: 4)
        academers.append(broon)
        let djenis = Academers(nome: "djenis", hemisferio: "BondiBontardian", nacao: "Museolandia", formaDeGoverno: "Randômica Regrada", idioma: "Onomatopéias", comunicacaoViolenta: 4)
        academers.append(djenis)
        let erickzera = Academers(nome: "erickzera", hemisferio: "BondiBontardian", nacao: "Magrathea", formaDeGoverno: "Coletivismo Igualitário", idioma: "Polyglottus babelensis", comunicacaoViolenta: 4)
        academers.append(erickzera)
        let maroka = Academers(nome: "maroka", hemisferio: "Boatardiana", nacao: "Flictas", formaDeGoverno: "Democracia flictista", idioma: "Cores", comunicacaoViolenta: 4)
        academers.append(maroka)
        let nakanis = Academers(nome: "nakanis", hemisferio: "Boatardiana", nacao: "Enótita", formaDeGoverno: "Comunitarismo", idioma: "Solidarianos", comunicacaoViolenta: 4)
        academers.append(nakanis)
        let schuedz = Academers(nome: "schuedz", hemisferio: "Bondiana", nacao: "Palmar", formaDeGoverno: "Império Alviverde", idioma: "Português Brasileiro", comunicacaoViolenta: 4)
        academers.append(schuedz)
        let yosda = Academers(nome: "yosda", hemisferio: "BondiBontardian", nacao: "ADDA", formaDeGoverno: "Yosdalitáio", idioma: "Inverter é só", comunicacaoViolenta: 0)
        academers.append(yosda)

        return academers
    }
}
