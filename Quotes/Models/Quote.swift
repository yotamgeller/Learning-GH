//
//  Quote.swift
//  Quotes
//
//  Created by Yotam Geller on 06/08/2021.
//

import Foundation

class Quote: Decodable, Identifiable {
    
    var id:UUID?
    var image:String
    var name:String
    var quote:String
    var bio:String
    
    
}
