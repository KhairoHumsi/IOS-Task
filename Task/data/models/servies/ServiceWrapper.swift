//
//  ServiceWrapper.swift
//  Task
//
//  Created by mohammad khair pk on 19/03/2021.
//

struct ServiceWrapper: Decodable {
    
    var success: Bool
    var data: [ServiresDocsModel]
    
    enum CodingKeys: String, CodingKey {
        case success, data
    }
}
