//
//  quizModel.swift
//  SwiftUIQuiz
//
//  Created by 수윤 on 2021/08/01.
//

import Foundation
struct QuizModel{
    var img : String?
    var text : String?
    var answer : [String]
    //specify what is the correct answer
    var correct : Int?
    
    var isSubmitted = false
    var completed = false
}

var myQuiz1 : [QuizModel] = [
    QuizModel(img: "flag1",
              text: "내가 키우는 개는?",
              answer: ["까치","럭키","몽실이","꼬맹이"],
              correct: 1),
    QuizModel(img: "flag2",
              text: "내 이름은?",
              answer: ["장수윤","이재욱","곽보선","변상운"],
              correct: 0),
    QuizModel(img: "flag3",
              text: "우리 과 이름은?",
              answer: ["산보","소웨","정통","모바일"],
              correct: 3),
    QuizModel(img: "flag4",
              text: "교수님 이름이 아닌것은",
              answer: ["이규행","유시환","강동원","최수한"],
              correct: 2)
]

func SaveScore(quiz: String, score: Int){
    UserDefaults.standard.set(score, forKey: quiz)
}
func LoadScore(quiz: String)-> Int{
    return UserDefaults.standard.integer(forKey: quiz)
}
