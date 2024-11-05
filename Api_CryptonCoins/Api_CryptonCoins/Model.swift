//
//  MOdel.swift
//  Api_CryptonCoins
//
//  Created by Turma01-1 on 04/11/24.
//

import Foundation


//"nome": "Isabella",
//"sobrenome": "Camilli",
//"idade": 19,
//"periodo": "Segundo",
//"cor": "Roxo"

struct People: Decodable, Hashable{
    let nome: String?
    let sobrenome: String?
    let idade: Int?
    let periodo: String?
    let cor: String?
}
