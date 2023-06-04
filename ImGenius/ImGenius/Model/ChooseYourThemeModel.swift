//
//  ChooseYourThemeModel.swift
//  ImGenius
//
//  Created by Lara K on 13/11/1444 AH.
//

import Foundation


struct Theme: Identifiable {
    var id = UUID()
    var imageName: String
    var name: String
    var noQuestions: String
    
}

var t1 = Theme(imageName: "p1", name: "Movies and TV series", noQuestions: "280 questions")
var t2 = Theme(imageName: "p2", name: "History", noQuestions: "300 questions")
var t3 = Theme(imageName: "p3", name: "Geography", noQuestions: "175 questions")
var t4 = Theme(imageName: "p4", name: "Paintings and Sculptures", noQuestions: "325 questions")
var t5 = Theme(imageName: "p5", name: "Technical progress", noQuestions: "275 questions")




var allTheme = [t1, t2, t3, t4, t5]
