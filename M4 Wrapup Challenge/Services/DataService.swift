//
//  DataService.swift
//  M4 Wrapup Challenge
//
//  Created by Quevin Bambasi on 3/22/23.
//

import Foundation

class DataService {
    static func getLocalData() -> [Book] {
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        if let path = pathString {
            let url = URL(filePath: path)
            
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    let bookData = try decoder.decode([Book].self, from: data)
                    
                    return bookData
                } catch {
                    print(error)
                }
            } catch {
                print(error)
            }
        }
        
        return [Book]()
    }
}
