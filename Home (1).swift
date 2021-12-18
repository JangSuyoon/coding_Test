//
//  ContentView.swift
//  gaejipsa
//
//  Created by 수윤 on 2021/07/23.
//

import SwiftUI

struct Home: View {
    
    @State var show = false

    // for analytics...
    @State var score = 0
    
    
    var body: some View {
        
        NavigationView{
            
            VStack(spacing: 20){
                Text("반려견 양육 능력 평가 시험")
                    .font(.system(size: 38))
                    .fontWeight(.heavy)
                    .foregroundColor(.purple)
                    .padding()
                    .padding(.top)
                Text("\n\n")
                Text("이 퀴즈는 독일의 반려견 면허 시험의 모티브로 ")
                    .font(.system(size: 20))
                Text("반려인의 자격을 충분히 검증하여")
                    .font(.system(size: 20))
                Text("반려견을 학대와 유기에서 보호하고")
                    .font(.system(size: 20))
                Text("반려견 산책할때 사고를 막기 위해 ")
                    .font(.system(size: 20))
                Text("까다로운 과정을 거치는 것 입니다. ")
                    .font(.system(size: 20))
                Text("백점을 맞을 시 만 가입이 됩니다.")
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(.black)
                    .padding(.top,8)
                    .multilineTextAlignment(.center)
                Text("\n")
                
                //button to start the quiz
                NavigationLink(destination: Quiz1()){
                    Text("START QUIZ")
                }
               
            }
            .navigationBarTitle("Quiz example", displayMode: .inline)
        }
    }
}
