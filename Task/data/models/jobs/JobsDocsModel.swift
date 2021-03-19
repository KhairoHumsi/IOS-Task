//
//  JobsDocsModel.swift
//  Task
//
//  Created by mohammad khair pk on 19/03/2021.
//

struct JobsDocsModel: Decodable, Identifiable {
    
    var id: String
    
    var jobTitleEn: String
    var jobTitleAr: String

    var employmentTypeEn: String
    var employmentTypeAr: String

    var jobContryEn: String
    var jobContryAr: String

    var industryEn: String?
    var industryAr: String?

    var image: String

    var createdDate: String
    
    enum CodingKeys: String, CodingKey {
        case id
        
        case jobTitleEn = "job_title_name_en"
        case jobTitleAr = "job_title_name_ar"

        case employmentTypeEn = "employment_type_name_en"
        case employmentTypeAr = "employment_type_name_ar"

        case jobContryEn = "job_location_country_name_en"
        case jobContryAr = "job_location_country_name_ar"

        case industryEn = "industry_name_en"
        case industryAr = "industry_name_ar"

        case image = "employer_employer_image"

        case createdDate = "created_at"
    }
}

let MOCK_JOBS: JobsDocsModel = JobsDocsModel(id: "Id", jobTitleEn: "Title english", jobTitleAr: "Title arabic", employmentTypeEn: "Type english", employmentTypeAr: "Type arabic", jobContryEn: "Country english", jobContryAr: "Country arabic", industryEn: "Industry english", industryAr: "Industry arabic", image: "image", createdDate: "created date")

let MOCK_JOBS_NIL: JobsDocsModel = JobsDocsModel(id: "Id", jobTitleEn: "Title english", jobTitleAr: "Title arabic", employmentTypeEn: "Type english", employmentTypeAr: "Type arabic", jobContryEn: "Country english", jobContryAr: "Country arabic", industryEn: nil, industryAr: nil, image: "image", createdDate: "created date")
