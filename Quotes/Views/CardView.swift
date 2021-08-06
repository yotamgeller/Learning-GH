//
//  CardView.swift
//  Quotes
//
//  Created by Yotam Geller on 06/08/2021.
//

import SwiftUI

struct CardView: View {
    
    var quote:Quote
    
    
    var body: some View {
        
        ZStack {
            
            Image(quote.image)
                .resizable()
                .scaledToFill()
                .frame(width: 360, height: 360, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
                .cornerRadius(10.0)
            
            VStack {
            
                Text(quote.quote)
                    .foregroundColor(Color.white)
                    .frame(width: 320, height: 200, alignment: .leading)
                    .font(.title)
                
                Text("- "+quote.name)
                    .foregroundColor(Color.white)
                    .frame(width: 300, height: 50, alignment: .leading)
                
                }
        }
        
    }
}






struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = QuoteModel()
        
        CardView(quote: model.quotes[1])
    }
}
