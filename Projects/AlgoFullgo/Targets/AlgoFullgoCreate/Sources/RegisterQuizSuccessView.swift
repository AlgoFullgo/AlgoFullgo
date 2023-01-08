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
                .padding(EdgeInsets(top: 40, leading: 20, bottom: 0, trailing: 0))

                Button("해결했어요 👍") {
                    print("222")
                }
                .buttonStyle(.bordered)

                Button("다음에 다시 풀래요 😅") {
                    print("123")
                }

                Spacer()
            }
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

struct RegisterQuizSuccessView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterQuizSuccessView()
    }
}
