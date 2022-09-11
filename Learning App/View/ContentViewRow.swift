//
//  ContentViewRow.swift
//  Learning App
//
//  Created by Arthur Sh on 11.09.2022.
//

import SwiftUI

struct ContentViewRow: View {
    
    @EnvironmentObject var model: ContentModel
    var index: Int
    
    var body: some View {
        let lesson = model.currentModule!.content.lessons[index]
        
       // Lesson card
        
        ZStack{
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .frame(height: 65)
            
            HStack( spacing: 30){
                 
                Text(String(index + 1))
                    .bold()
                
                VStack(alignment: . leading){
                    
                    Text(lesson.title)
                        .bold()
                    
                    Text(lesson.duration)
                    
                }
                Spacer()
            }.padding(.horizontal, 25)
            
        }
        .padding(.bottom, 5)
    }
}

 
