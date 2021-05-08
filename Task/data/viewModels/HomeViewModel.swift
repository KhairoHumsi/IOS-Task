//
//  HomeViewModel.swift
//  Task
//
//  Created by mohammad khair pk on 18/03/2021.
//

import SwiftUI
import Combine
import Alamofire

class HomeViewModel: ObservableObject, Identifiable {
  
    private var cancellableSet: Set<AnyCancellable> = []
    let settings = LanguageSettings.shaired

    @Published var isLoading = false
    @Published var isJobs = false
    @Published var isServies = false
    
    @Published var jobs: [JobsDocsModel] = []
    @Published var servies: [ServiresDocsModel] = []
    
    var apiClient = ApiInterface.getInstance()
    
//    private var isLoadingPublisher: AnyPublisher<Bool, Never> {
//        Publishers.CombineLatest($isJobs, $isServies)
//              .map { jobs, servies in
//                return (jobs == servies) == true
//              }
//              .eraseToAnyPublisher()
//    }
    
    init() {
//        isLoadingPublisher
//            .receive(on: RunLoop.main)
//            .assign(to: \.isLoading, on: self)
//            .store(in: &cancellableSet)
        
        fetchJobs()
        fetchServies(language: settings.lang)
    }
    
    func fetchJobs() {
        isJobs = true
        self.jobs = []
        apiClient.fetchJobs { (jobs) in
            guard let jobs = jobs else {
                self.jobs = []
                self.isJobs = false
                
                return
            }
            
            self.jobs.append(contentsOf: jobs.data.results.docs)
            self.isJobs = false
        }
    }
    
    func fetchServies(language: String) {
        isServies = true
        self.servies = []
        apiClient.fetchServies(language: language) { (servies) in
            guard let servies = servies else {
                self.servies = []
                self.isServies = false
                
                return
            }
            
            self.servies.append(contentsOf: servies.data)
            self.isServies = false
        }
    }
}
