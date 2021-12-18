//
//  FinalView.swift
//  SwiftUIQuiz
//
//  Created by 수윤 on 2021/08/01.
//

import SwiftUI

struct FinalView: View {
    var score : Int
    var body: some View {
        
        //맨 마지막에 최종으로 나오는 화면
        //총 몇개 맞았는지 나오는 화면
        
        VStack(spacing: 25){
            Image("trophy")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250)
            
            Text("고생하셨습니다!")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.black)
            
            Text("Final Score : \(score)")
                .onAppear(){
                    SaveScore(quiz: "myQuiz1", score: self.score)
                }
            
            Button(action:{
               
            },label:{
                Text("산책자 정보 등록")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: UIScreen.main.bounds.width - 150)
                    .background(Color.blue)
                    .cornerRadius(15)
                
            })
        }
    }
}

