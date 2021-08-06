//
//  DataService.swift
//  Recipe List
//
//  Created by Yotam Geller on 05/08/2021.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Quote] {
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if pathString != nil {
            
            let url = URL(fileURLWithPath: pathString!)
            
            do {
                
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
            
                    let ret = try decoder.decode([Quote].self, from: data)
                    
                    for index in 0..<ret.count {
                        ret[index].id = UUID()
                    }
                    
 
                    
                   return ret
                }
                catch {
                    print("Couldn't parse Pizzas")
                }
                
            }
            catch {
                print("Couldn't create Data object")
            }
            
        }
        return [Quote]()
    }
}
