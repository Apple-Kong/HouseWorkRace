//
//  KobisKey.swift
//  EduTemplate
//
//  Created by GOngTAE on 2022/01/03.
//

import Foundation
import Alamofire

struct Secret {
    static let KAKAO_KEY = "7d021aed379acac4b1790cbd05c57141"
    
    
    static let kakaoHeaders: HTTPHeaders = [
        "Authorization": ""
    ]
    
    static let naverHeaders: HTTPHeaders = [
        "X-Naver-Client-Id" : "",
        "X-Naver-Client-Secret" : ""
    ]
    
    static var token: String? {
        get {
            guard let token = UserDefaults.standard.string(forKey: "jwt") else { return nil }
            return token
        }
    }
    
    static var tokenHeaders: HTTPHeaders? {
        get {
            guard let token = UserDefaults.standard.string(forKey: "jwt") else { return nil }
            let headers: HTTPHeaders = [
                "x-access-token" : token
            ]
            return headers
        }
    }
}


