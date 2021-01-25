//
//  AppDelegate.swift
//  BogusTV
//
//  Created by Marius Ilie on 24/01/2021.
//

import UIKit
import BogusApp_Common_UIComponents
import BogusApp_Common_UIComponents_tvOS

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let appDIContainer = AppDIContainer()
    var appFlowCoordinator: AppFlowCoordinator?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        AppResourcesBundle.configure()
        setupWindow()

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    private func setupWindow() {
        window = UIWindow()
        let navigationController = UINavigationController()
        window?.rootViewController = navigationController

        appFlowCoordinator = AppFlowCoordinator(navigationController: navigationController,
                                                appDIContainer: appDIContainer)
        appFlowCoordinator?.start()

        window?.makeKeyAndVisible()
    }
}
