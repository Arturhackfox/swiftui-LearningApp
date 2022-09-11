//
//  contentView.swift
//  Learning App
//
//  Created by Arthur Sh on 11.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        ScrollView{
            
            LazyVStack{
                
                // Check if there is Value set
                if model.currentModule != nil{
                    
                    ForEach(0..<model.currentModule!.content.lessons.count, id: \.self) { index in
                        
                        
                   ContentViewRow(index: index)
                        
                    }
                    //End of foreach loop
                }
                
            }
            .padding()
            .navigationTitle("Learn \(model.currentModule?.category ?? "")")
            
        }
    }
}

