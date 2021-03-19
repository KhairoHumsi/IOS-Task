//
//  ResponseResultsModel.swift
//  Task
//
//  Created by mohammad khair pk on 19/03/2021.
//

struct ResponseResultsModel<T: Decodable>: Decodable {
    
    var docs: T
    
    enum CodingKeys: String, CodingKey {
        case docs
    }
}
