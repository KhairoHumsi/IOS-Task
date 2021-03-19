//
//  ResponseDataModel.swift
//  Task
//
//  Created by mohammad khair pk on 19/03/2021.
//

struct ResponseDataModel<T: Decodable>: Decodable {
    
    var results: ResponseResultsModel<T>
    
    enum CodingKeys: String, CodingKey {
        case results
    }
}
