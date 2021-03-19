//
//  ServiresDocsModel.swift
//  Task
//
//  Created by mohammad khair pk on 19/03/2021.
//

struct ServiresDocsModel: Decodable, Identifiable {
    
    var id: Int
    let serviceName: String
    let rate: Double
    let sellerName: String
    let countryName, sellerType: String
    
    enum CodingKeys: String, CodingKey {
        case id = "service_id"
        case serviceName = "service_name"
        case rate
        case sellerName = "seller_name"
        case countryName = "country_name"
        case sellerType = "seller_type"

    }
}

let MOCK_SERVICES: ServiresDocsModel = ServiresDocsModel(id: 0, serviceName: "serviceName", rate: 3.0, sellerName: "sellerName", countryName: "sellerImage", sellerType: "sellerType")
