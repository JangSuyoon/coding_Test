//
//  ContentView.swift
//  gaejipsa
//
//  Created by 수윤 on 2021/07/23.
//

import SwiftUI
import WebKit

import Foundation
import UIKit


struct Home: View {
    @State var show = false
    //storing level for fetching questions..
    @State var set = "Round_1"
    
    // for analytics...
    @State var correct = 0
    @State var wrong = 0
    @State var answered = 0
    
    var body: some View {
        
        VStack{
            
            Text("개집사 퀴즈")
                .font(.system(size: 38))
                .fontWeight(.heavy)
                .foregroundColor(.purple)
                .padding()
                .padding(.top)
            
            Text("백점을 맞을 시 만 가입이 됩니다.")
                .font(.title2)
                .fontWeight(.black)
                .foregroundColor(.black)
                .padding(.top,8)
                .multilineTextAlignment(.center)
            
            Spacer(minLength: 0)
            
            //Level view
                    
                Button(action: {
                    print("start")
                               }) {
                    HStack{
                        Text("Start quiz")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(15)
                        //opening QA view as sheet...
                        .onTapGesture(perform: {
                            set = "Round_1"
                            show.toggle()
                    })
                }
                }
            .padding()
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea())
        .sheet(isPresented: $show, content: {
            
            QA(correct: $correct, wrong: $wrong, answered: $answered,set: set)
        })
        }
       
    }


