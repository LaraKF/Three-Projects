//
//  FinalView.swift
//  ImGenius
//
//  Created by Lara K on 14/11/1444 AH.
//

import SwiftUI

struct FinalView: View {

        var score : Int
        var body: some View {
            
            VStack {
                
                ZStack {
                    Text("Final Score : \(score) / 5")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .bold()
                    .onAppear(){
                        SaveScore(quiz: "myQuiz1", score: self.score)
                    }
                }
                .padding(.bottom, 50.0)

                
            }.frame(width: 400.0, height: 880.0) .background(Color("bg"))
                
            
        }
        
        
    }

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView(score: 0)
    }
}
