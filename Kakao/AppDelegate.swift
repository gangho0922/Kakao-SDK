//
//  AppDelegate.swift
//  Kakao
//
//  Created by AnnKangHo on 2022/12/20.
//

import SwiftUI

import KakaoSDKCommon
import KakaoSDKAuth


class AppDelegate: NSObject, UIApplicationDelegate{
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        KakaoSDKCommon.initSDK(appKey: "고유키", loggingEnable:false)

        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
           if (AuthApi.isKakaoTalkLoginUrl(url)) {
               return AuthController.handleOpenUrl(url: url, options: options)
           }
           
           return false
       }

}
