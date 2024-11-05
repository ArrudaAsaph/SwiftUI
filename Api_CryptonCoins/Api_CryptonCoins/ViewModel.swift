//
//  ViewModel.swift
//  Api_CryptonCoins
//
//  Created by Turma01-1 on 04/11/24.
//

import Foundation

class ViewModel : ObservableObject{
    
    @Published var chars: [People] = []
    
    func fetch()
    {
        let task = URLSession.shared.dataTask(with: URL(string:
                                                            "http://127.0.0.1:1880/getAsaph")!){data, _, error in
            
            do {
                self.chars = try JSONDecoder().decode([People].self, from: data!)
                
            }catch{
                print(error)
            }
        }
        task.resume()
        
    }}
