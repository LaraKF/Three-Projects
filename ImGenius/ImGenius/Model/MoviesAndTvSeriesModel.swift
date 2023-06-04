//
//  MoviesAndTvSeriesModel.swift
//  ImGenius
//
//  Created by Lara K on 14/11/1444 AH.
//

import Foundation
struct QuizModel  {
    var text : String?
    var answer : [String]
    var correct : Int?
}

var myQuiz1 : [QuizModel] = [

    QuizModel(
    text: "Who is the Director of the movie “Titanic”?",
    answer: ["Christopher Nolan","James Cameron","Quentin Tarantino"],
    correct: 1),
    
    QuizModel(
    text: "Who is the Author of Harry Potter?",
    answer: ["J.K. Rowling","James Patterson","Leo Tolstoy"],
    correct: 0),
    
    QuizModel(
    text: "Who created “The Simpsons”?",
    answer: ["Alf Clausen","Richard Gibbs","Matt Groening"],
    correct: 2),
    
    QuizModel(
    text: "What is the real name of Hulk?",
    answer: ["Bruce Banner","Mark Ruffalo","Robert Bruce"],
    correct: 1),
    
    QuizModel(
    text: "When did Titanic Ship Sink?",
    answer: ["1921","1912","1910"],
    correct: 1),

]
