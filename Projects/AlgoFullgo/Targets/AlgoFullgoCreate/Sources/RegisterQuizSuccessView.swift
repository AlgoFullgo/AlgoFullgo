//
//  RegisterQuizSuccessView.swift
//  AlgoFullgo
//
//  Created by 오준현 on 2023/01/08.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import SwiftUI

struct RegisterQuizSuccessView: View {

    public var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("문제 풀이 결과는?")
                        .font(.system(size: 20, weight: .medium, design: .default))
                    Spacer()
                }
                .padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 0))

                Button {
                    print("aaa")
                } label: {
                    HStack {
                        Text("해결했어요 👍")
                        Spacer()
                        Image(systemName: "checkmark")
                            .opacity(1)
                    }
                }
                .buttonStyle(QuizButtomStyle())

                Button {
                    print("bbb")
                } label: {
                    HStack {
                        Text("다음에 다시 풀래요 😅")
                        Spacer()
                        Image(systemName: "checkmark")
                            .opacity(1)
                    }
                }
                .buttonStyle(QuizButtomStyle())

                Spacer()
                HStack {
                    Button {

                    } label: {
                        Text("123213")
                            .foregroundColor(Color.white)
                            .background(Color.red)
                            .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                    }
                }
            }
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            .navigationBarTitle(
                Text("결과 등록"),
                displayMode: .inline
            )
            .navigationBarItems(trailing: Button(action: {
                print("did tap close")
            }, label: {
                Image(systemName: "xmark")
                    .tint(Color.gray)
            }))
        }
    }
}

struct QuizButtomStyle: ButtonStyle {
    var isSelected: Bool = false

    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
                .padding()
                .foregroundColor(isSelected ? Color.black : Color.gray)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(isSelected ? Color.black : Color.gray, lineWidth: 1)
                )
            Spacer()
        }
    }
}

struct RegisterQuizSuccessView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterQuizSuccessView()
    }
}
