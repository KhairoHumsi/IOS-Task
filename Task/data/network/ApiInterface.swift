//
//  ApiInterface.swift
//  Task
//
//  Created by mohammad khair pk on 18/03/2021.
//

import Alamofire
import Combine

class ApiInterface: APIHandler {
    
    private static let apiInterface = ApiInterface()
    
    public static func getInstance()-> ApiInterface {
        return ApiInterface.apiInterface
    }
    
    func fetchJobs(callResponse:@escaping (ResponseWrapper<[JobsDocsModel]>?)-> Void) {
        AF.request("\(ApiClient.BASE_URL)search/job-posts", method: .get, parameters: nil).responseDecodable { [weak self] (response: DataResponse<ResponseWrapper<[JobsDocsModel]>, AFError>) in
            guard let weakSelf = self else { return }
            
            guard let response = weakSelf.handleResponse(response) as? ResponseWrapper<[JobsDocsModel]> else {
                callResponse(nil)
                return
            }
            
            callResponse(response)
        }
    }
    
    func fetchServies(language: String, callResponse:@escaping (ServiceWrapper?)-> Void) {
        let headers: HTTPHeaders = [
                "x-localization": language
            ]
        
        AF.request("\(ApiClient.BASE_URL)latest-services", method: .get, parameters: nil, headers: headers).responseDecodable { [weak self] (response: DataResponse<ServiceWrapper, AFError>) in
            guard let weakSelf = self else { return }
            
            guard let response = weakSelf.handleResponse(response) as? ServiceWrapper else {
                callResponse(nil)
                return
            }
            
            callResponse(response)
        }
    }
}
