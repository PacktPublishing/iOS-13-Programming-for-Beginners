//
//  SignInViewController.swift
//  LetsEat
//
//  Created by admin on 02/11/2019.
//  Copyright © 2019 MyName. All rights reserved.
//

import UIKit
import AuthenticationServices

class SignInViewController: UIViewController, ASAuthorizationControllerDelegate, ASAuthorizationControllerPresentationContextProviding {
    
    var appleIDGivenName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        displaySignInWithAppleButton()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tabBarController = segue.destination as? UITabBarController, let navViewController = tabBarController.viewControllers?[0] as? UINavigationController, let exploreViewController = navViewController.viewControllers[0] as? ExploreViewController {
            exploreViewController.givenName = appleIDGivenName
        }
    }
    
    func displaySignInWithAppleButton(){
        let appleIDButton = ASAuthorizationAppleIDButton()
        appleIDButton.translatesAutoresizingMaskIntoConstraints = false
        appleIDButton.addTarget(self, action: #selector(appleIDButtonTapped), for: .touchUpInside)
        view.addSubview(appleIDButton)
        NSLayoutConstraint.activate([
            appleIDButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            appleIDButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }
    
    @objc func appleIDButtonTapped() {
        let provider = ASAuthorizationAppleIDProvider()
        let request = provider.createRequest()
        request.requestedScopes = [.fullName, .email]
        let controller = ASAuthorizationController(authorizationRequests: [request])
        controller.delegate = self
        controller.presentationContextProvider  = self
        controller.performRequests()
    }
    
    // MARK: - SignInWithApple
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        
        switch authorization.credential {
            
        case let credentials as ASAuthorizationAppleIDCredential:
            print(credentials.user)
            print(credentials.fullName?.givenName ?? "No given name provided")
            print(credentials.fullName?.familyName ?? "No family name provided")
            print(credentials.email ?? "No email provided")
            appleIDGivenName = credentials.fullName?.givenName
            performSegue(withIdentifier: "signin", sender: nil)
            
        default:
            break

        }
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        print("AppleID Authentication failed", error)
    }
    
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        return view.window!
    }

}
