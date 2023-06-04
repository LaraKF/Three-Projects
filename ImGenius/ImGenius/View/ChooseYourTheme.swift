//
//  ChooseYourTheme.swift
//  ImGenius
//
//  Created by Lara K on 13/11/1444 AH.
//

import SwiftUI

struct ChooseYourTheme: View {
    var body: some View {
      //  VStack {
        VStack(alignment: .center){
            
         //   ZStack {
                Image("ImageC")
                    .resizable()
                    .frame(width: 400.0, height: 110.0)
                    .ignoresSafeArea()
                
//                HStack {
//                    Image("logo")
//                        .resizable ()
//                        .frame(width: 110, height: 50)
//                }
//                .padding(.bottom, 60.0)
//
//
//
//                HStack {
//                    Image(systemName: "person")
//                        .padding(.leading, 300.0)
//                        .imageScale(.large)
//                        .foregroundColor(Color.white)
//                }
                
         //   }
            
            //ZStack {
             // VStack {
                      Text("Choose your theme")
                          .font(.title2)
                          .bold()
                          .padding(.trailing, 150.0)
                        
                    
                    ZStack {
                            ScrollView {
                                VStack {
                                    ForEach(allTheme) { themes in
                                        
                                        ZStack {
                                            NavigationLink(destination:
                                                            Quiz1()) {
                                                RoundedRectangle(cornerRadius: 1)
                                                    .fill(Color("Color1"))
                                                    .frame(width: 350.0, height: 100.0)
                                            }
                                            
                                                ZStack {
                                                    Image(themes.imageName)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .clipShape(RoundedRectangle(cornerRadius: 1))
                                                        .frame(width: 100.0, height: 100.0)
                                                        .padding(.trailing, 250.0)
                                                
                                                
                                                VStack(alignment: .leading){
                                                    Text(themes.name)
                                                        .bold()
                                                        .font(.system(size: 14))
                                                        .foregroundColor(Color.black)
                                                        .padding([.top])
                                                    
                                                    Text(themes.noQuestions)
                                                        .font(.system(size: 12))
                                                        .foregroundColor(Color.black)
                                                        .padding(.trailing, 80.0)
                                                    .padding(.top, 1.0) }
                                                .padding(.leading, 100.0)
                                                .padding(/*@START_MENU_TOKEN@*/.bottom, 20.0/*@END_MENU_TOKEN@*/)
                                             } } } } }
                        Image("white")
                            .padding(.top, 630.0)
                    }
           
           // }
        }
    }
}


struct ChooseYourTheme_Previews: PreviewProvider {
    static var previews: some View {
        ChooseYourTheme()
    }
}
