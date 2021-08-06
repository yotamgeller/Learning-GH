//
//  ContentView.swift
//  Quotes
//
//  Created by Yotam Geller on 06/08/2021.
//

import SwiftUI

struct HomeScreenView: View {
    
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        
        
        NavigationView {
            ScrollView {
                
                VStack {
                
                ForEach (model.quotes) { q in
                    
                    
                    NavigationLink(
                        destination: InfoView(quote: q),
                        label: {
                            CardView(quote: q)
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        })
                }
                    
                    
                    
                }
                
                
            }
            .navigationBarTitle("My Quotes")
            
            
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
