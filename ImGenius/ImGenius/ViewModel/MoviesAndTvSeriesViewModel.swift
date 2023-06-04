//
//  MoviesAndTvSeriesViewModel.swift
//  ImGenius
//
//  Created by Lara K on 14/11/1444 AH.
//

import Foundation



func SaveScore(quiz : String , score : Int){
    UserDefaults.standard.set(score, forKey: quiz)
}

func LoadScore (quiz : String) -> Int{
    return UserDefaults.standard.integer(forKey: quiz)
}
