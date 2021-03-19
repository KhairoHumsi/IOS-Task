//
//  HomeView.swift
//  Task
//
//  Created by mohammad khair pk on 17/03/2021.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var settings: LanguageSettings
    
    @ObservedObject var viewModel = HomeViewModel()
    
    @State var search : String = ""
    @State var isEnglish: Bool = true

    var body: some View {
        ScrollView {
            ZStack {
                VStack {
                    Image("background")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width + 50)
                        .scaledToFill()
                        .background(Color.blue)
                        .cornerRadius(40, corners: [.bottomLeft, .bottomRight])
                    
                    Spacer()
                }
                
                VStack {
                    HStack {
                        Spacer()
                        
                        Button(action: { changeLanguage() }, label: {
                            Text("lang")
                        })
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(.top, 40)
                .padding(.horizontal, 32)
                
                VStack {
                    HStack {
                        Spacer()
                        
                        Image("ihr")
                            .resizable()
                            .frame(width: 85, height: 70)
                            .scaledToFill()
                        
                        Spacer()
                    }
                    .padding(40)
                    
                    HStack {
                        Text("وظائف")
                            .frame(width: 90, height: 30)
                            .foregroundColor(Colors.ui.darkRed)
                            .background(Color.white)
                            .cornerRadius(12)
                        
                        Text("خدمات")
                            .frame(width: 90, height: 30)
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .foregroundColor(.white)
                            .cornerRadius(12)
                        
                        Spacer()
                    }
                    .padding(.top, 8)
                    .padding(.horizontal, 32)
                    
                    CustomTextField(text: $search, placeHolder: "إبحث عن وظيفة", imageName: "magnifyingglass")
                        .frame(height: 15)
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(24)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                    
                    VStack {
                        HStack { Spacer() }
                        
                        Image(systemName: "house")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .padding(.top, 24)
                            .foregroundColor(.black)
                        
                        Text("محمد عبد الله")
                            .font(.system(size: 17, weight: .bold))
                            .font(.footnote)
                            .foregroundColor(Colors.ui.darkRed)
                            .padding(.top, 8)
                        
                        HStack {
                            
                            Text("تحديث السيرة الذاتية>")
                                .font(.system(size: 13, weight: .bold))
                                .font(.footnote)
                                .foregroundColor(.gray)
                            
                            Text("آخر تحديث: 21-10-2019cc")
                                .font(.system(size: 13))
                                .font(.footnote)
                                .foregroundColor(.gray)
                            
                        }
                        .padding(.top)
                        .padding(.bottom, 24)
                    }
                    .background(Color.white)
                    .cornerRadius(32)
                    .padding(.horizontal, 32)
                    .padding(.top, 24)
                    .shadow(color: Colors.ui.lightGray, radius: 1, x: 1.5, y: 8)
                    
                    HStack {
                        Text("last_jobs")
                            .font(.system(size: 16))
                            .font(.footnote)
                            .foregroundColor(Colors.ui.darkRed)
                        
                        Spacer()
                        
                        Text("show_all")
                            .font(.system(size: 16))
                            .font(.footnote)
                            .foregroundColor(Colors.ui.darkRed)
                    }
                    .padding(.horizontal, 32)
                    .padding(.top, 24)
                    
                    
                    if viewModel.isJobs {
                        Loading()
                        
                    } else {
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(viewModel.jobs) { job in
                                    JobCell(isEnglish: $isEnglish, model: job)
                                        .shadow(color:  Colors.ui.lightGray, radius: 1, y: 0.1)
                                        .shadow(color:  Colors.ui.lightGray, radius: 1)
                                }
                            }
                            .padding(.horizontal, 32)
                            .padding(.vertical, 8)
                        }
                    }
                    
                    HStack {
                        Text("last_servies")
                            .font(.system(size: 16))
                            .font(.footnote)
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Text("show_all")
                            .font(.system(size: 16))
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal, 32)
                    .padding(.top)
                    
                    if viewModel.isServies {
                        Loading()
                        
                    } else {
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(viewModel.servies) { servies in
                                    ServicesCell(model: servies)
                                        .shadow(color: .gray, radius: 1, y: 0.1)
                                        .shadow(color: .gray, radius: 1)
                                }
                            }
                            .padding(.horizontal, 32)
                            .padding(.vertical, 8)
                        }
                    }
                    
                    Spacer()
                }
            }
        }
        .background(Colors.ui.darkWhite)
        .ignoresSafeArea()
    }
    
    func changeLanguage() {
        settings.lang = settings.lang == "ar" ? "en" : "ar"
        isEnglish = settings.lang == "en" ? true : false
        
        viewModel.fetchServies(language: settings.lang)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
