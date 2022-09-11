//
//  ContentModel.swift
//  Learning App
//
//  Created by Arthur Sh on 08.09.2022.
//

import Foundation


class ContentModel: ObservableObject {
    
    @Published var modules = [Module]()
    
    @Published var currentModule: Module?
    var currentModuleIndex = 0
    
    var styleData: Data?
    
    init(){
        
        getLocalData()
        
    }
    
    // MARK: Data methods
    func getLocalData(){
        
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do{
            
            let jsonData = try Data(contentsOf: jsonUrl! )
            
            let jsonDecoder = JSONDecoder()
            
            
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            self.modules = modules
            
            
            
        }catch{
            print("Couldn't parse local data ")
        }
        
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do{
            
            let styleData = try Data(contentsOf: styleUrl!)
            
            self.styleData = styleData
        } catch {
            print("Couldn't parse style Data")
        }
        
    }
    
    
    // MARK: Module navigation methods
    func beginModule(_ moduleid: Int) {
        
        for index in 0..<modules.count {
            
            if modules[index].id == moduleid {
                
                // Found the matching module
                currentModuleIndex = index
                    break
            }
        }
        
        // Set the current module
         currentModule = modules[currentModuleIndex]
        
    }
    
    
}
