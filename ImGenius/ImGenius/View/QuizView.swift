//
//  QuizView.swift
//  ImGenius
//
//  Created by Lara K on 14/11/1444 AH.
//

import SwiftUI



struct Quiz1 : View {
    
    @State var i : Int = 0
    
    @State var score = 0
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            
            
            ZStack {
                Image("ImageC")
                    .resizable()
                    .frame(width: 400.0, height: 110.0)
                    .ignoresSafeArea()
                
                HStack {
                    Image("logo")
                        .resizable ()
                        .frame(width: 110, height: 50)
                }
                .padding(.bottom, 9.0)
                
                
                HStack {
                    Image(systemName: "person")
                        .padding(.leading, 300.0)
                        .imageScale(.large)
                        .foregroundColor(Color.white)
                }
                .padding(.bottom)
                
            }
            
            Text("Movies and TV series")
                .font(.title2)
                .bold()
                .padding(.trailing, 130.0)
            
            if(self.i < myQuiz1.count){
                
                
                ZStack {
                    Text(myQuiz1[self.i].text!)
                        .padding(.trailing, 50.0)
                        .padding(.bottom, 120.0)
                }
                
                Text("Select an answer")
                        .font(.title2)
                        .bold()
                        .padding(.trailing, 170.0)
                
                
                
                Button(action:{
                    self.buttonAction(n: 0)
                },label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color("Color1"))
                            .frame(width: 300.0, height: 80.0)
                        Text(myQuiz1[self.i].answer[0])
                        .foregroundColor(Color.black) }
                    
                })
                
                
                
                Button(action:{
                    self.buttonAction(n: 1)
                },label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color("Color1"))
                            .frame(width: 300.0, height: 80.0)
                    Text(myQuiz1[self.i].answer[1])
                        .foregroundColor(Color.black) }

                })
                
                
                Button(action:{
                    self.buttonAction(n: 2)
                },label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color("Color1"))
                            .frame(width: 300.0, height: 80.0)
                    Text(myQuiz1[self.i].answer[2])
                    .foregroundColor(Color.black) }

                })
                
                Text("Score : \(score)")
                  .font(.title3)
                  .foregroundColor(Color("bg"))
                  .bold()
                  .padding(.top, 50.0)
               
            }
            
                 
                
            else{
                FinalView(score : self.score)
            }
            
            
        }
        .padding(.bottom, 80.0)
    }
    
    
    func buttonAction( n : Int){
        if(myQuiz1[self.i].correct == n){
            self.score = self.score + 1
        }

        self.i = self.i + 1
    }
    
    
}


struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        Quiz1()
    }
}
