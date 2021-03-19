//
//  ApiClient.swift
//  Task
//
//  Created by mohammad khair pk on 18/03/2021.
//

import Foundation

class ApiClient: NSObject {
    
    private static let apiClient = ApiClient()
    static let BASE_URL =  "https://apiv2.ihr-jobs.com/api/v1/"
       
    public static func getInstance()-> ApiClient {
    
        return ApiClient.apiClient
        
    }
    
    private override init() {}
}
