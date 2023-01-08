//
//  AppleLoginCoordinator.swift
//  AlgoFullgoLogin
//
//  Created by Jaewook Hwang on 2023/01/08.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import AuthenticationServices

final class AppleLoginCoordinator:
  NSObject,
  OAuthAuthorizable,
  ASAuthorizationControllerDelegate {
    
    func authorize() {
        let appleIDProvider = ASAuthorizationAppleIDProvider()
        let request = appleIDProvider.createRequest()
        request.requestedScopes = [
          .fullName,
          .email
        ]
        
        let authorizationController = ASAuthorizationController(authorizationRequests: [request])
        authorizationController.delegate = self
        authorizationController.performRequests()
    }
}

// MARK: - ASAuthorizationControllerDelegate
extension AppleLoginCoordinator {
  func authorizationController(
    controller: ASAuthorizationController,
    didCompleteWithAuthorization authorization: ASAuthorization
  ) {
      switch authorization.credential {
      case let appleIDCredential as ASAuthorizationAppleIDCredential:
          // TODO: Setup apple login
          print(appleIDCredential)
      default:
          break
      }
  }
  
  func authorizationController(
    controller: ASAuthorizationController,
    didCompleteWithError error: Error
  ) {
      print(error.localizedDescription)
  }
}
