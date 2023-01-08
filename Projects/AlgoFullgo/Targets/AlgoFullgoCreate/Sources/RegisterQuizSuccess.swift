//
//  RegisterQuizSuccess.swift
//  AlgoFullgo
//
//  Created by 오준현 on 2023/01/08.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import ComposableArchitecture

struct RegisterQuizSuccess: ReducerProtocol {

    struct State: Equatable {
        var isSuccess: Bool?
    }

    enum Action: Equatable {
        case didSelectQuizSuccess(Bool)
    }

    func reduce(
        into state: inout State,
        action: Action
    ) -> EffectTask<Action> {
        switch action {
        case .didSelectQuizSuccess(let isSuccess):
            state.isSuccess = isSuccess
        }
        return .none
    }
}
