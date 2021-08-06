//
//  InfoView.swift
//  Quotes
//
//  Created by Yotam Geller on 06/08/2021.
//

import SwiftUI

struct InfoView: View {
    
    var quote:Quote
    
    var body: some View {
        
        ScrollView {
            
                Text(quote.bio)
                .frame(width: 360, alignment: .leading)
                .font(.body)
            
            
            
        }.navigationBarTitle(quote.name)
        
        
        
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = QuoteModel()
        
        InfoView(quote: model.quotes[0])
    }
}
