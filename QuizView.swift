//
//  QuizView.swift
//  SwiftUIQuiz
//
//  Created by 수윤 on 2021/08/01.
//

import SwiftUI

struct Quiz1: View {
    //number of question
    @State var i : Int = 0
 
    //var for the score
    @State var score = 0
    
    @State var selected = ""

    var body: some View {
        
        VStack(alignment: .leading, spacing: 15){
            
            //if i< of quiestion --> play question
            if(self.i < myQuiz1.count){
                
                
                //text of the question
                Text(myQuiz1[self.i].text!)
                 
                //answer 0
                Button(action:{
                    selected = myQuiz1[self.i].answer[0]
                    self.buttonAction(n: 0)
                },label: {
                    Text(myQuiz1[self.i].answer[0])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.gray,lineWidth: 2)
                        )
                })//button
                
                
                //answer1
                Button(action:{
                    //self.buttonAction(n: 1)
                    selected = myQuiz1[self.i].answer[1]
                },label: {
                    Text(myQuiz1[self.i].answer[1])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.gray,lineWidth: 2)
                        )
                })
                
                
                //answer2
                Button(action:{
                    self.buttonAction(n: 2)
                    selected = myQuiz1[self.i].answer[2]
                },label: {
                    Text(myQuiz1[self.i].answer[2])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.gray,lineWidth: 2)
                        )
                })
                  
                
                //answer3
                Button(action:{
                    self.buttonAction(n: 3)
                    selected = myQuiz1[self.i].answer[3]
                },label: {
                    Text(myQuiz1[self.i].answer[3])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.gray,lineWidth: 2)
                        )
                })
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
                HStack(spacing: 15){
                    
                    Button(action: {},label : {
                        Text("Submit")
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(15)
                    })//button
                } //hstack
                
                
        }
            
            //after last question --> show final view with score
            else{
                
                FinalView(score : self.score)
                
            }
    }
        .padding(.horizontal)
}
    
    
    //action of the buttons
    func buttonAction(n : Int){
        
        //if answer is correct increment score
        if(myQuiz1[self.i].correct == n){
            self.score = self.score + 1
        }
        //GO TO NEXT SECTION
        self.i = self.i + 1
    }
    
}
