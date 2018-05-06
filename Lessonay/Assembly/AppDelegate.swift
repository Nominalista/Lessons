//
//  AppDelegate.swift
//  Lessonay
//
//  Created by Nominalista on 02.05.2018.
//  Copyright © 2018 Nominalista. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    private let automaton = Automaton(state: State(), transducer: AppTransducer())

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        setupWindow()
        return true
    }

    private func setupWindow() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.makeKeyAndVisible()
        window.rootViewController = HomeViewController(automaton: automaton)
        self.window = window
    }
}
