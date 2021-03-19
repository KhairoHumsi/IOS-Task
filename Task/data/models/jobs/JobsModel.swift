//
//  JobsModel.swift
//  Task
//
//  Created by mohammad khair pk on 19/03/2021.
//

struct JobsModel: Decodable, Identifiable {
    
    var id: Int = 0
    var userId: Int = 0
    var title: String = ""
    var body: String = ""
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case userId = "userId"
        case title = "title"
        case body = "body"
    }
}

