//
//  ContentView.swift
//  ImGenius
//
//  Created by Lara K on 13/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                ZStack {
                    Image("ImageC")
                        .resizable()
                    // .frame(width: 400.0, height: 70.0)
                        .padding(.bottom, 200.0)
                        .ignoresSafeArea()
                    ZStack {
                        Image("Image1")
                            .resizable()
                            .frame(width: 400.0, height: 140.0)
                    }
                    .padding(.bottom, 200.0)
                    
                }
                
                
                ZStack {
                    Image("Image2")
                        .resizable()
                        .frame(width: 250.0, height: 250.0)
                }
                // .padding(.bottom, 50)
                
                
                
                
                ZStack {
                    
                    ZStack {
                        Image("Image3")
                            .resizable()
                        //  .padding(.top)
                            .frame(width: 400.0, height: 130.0)
                    }
                    .padding(.top, 70.0)
                    //   .padding(.top, 40.0)
                    
                    
                    NavigationLink(destination:
                          ChooseYourTheme()) {
                        Image("ImageC")
                            .resizable()
                            .padding(.top, 200.0)
                            .ignoresSafeArea()
                    }
                }
                
            }
            // .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
