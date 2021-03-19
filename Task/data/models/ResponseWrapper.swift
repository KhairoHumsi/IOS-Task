//
//  ResponseWrapper.swift
//  Task
//
//  Created by mohammad khair pk on 19/03/2021.
//

struct ResponseWrapper<T: Decodable>: Decodable {
    
    var success: Bool
    var data: ResponseDataModel<T>
    
    enum CodingKeys: String, CodingKey {
        case success, data
    }
}
