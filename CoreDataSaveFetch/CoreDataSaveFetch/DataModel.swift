//
//  DataModel.swift
//  CoreDataSaveFetch
//
//  Created by Rabin on 22/03/23.
//

import Foundation
import CoreData
import UIKit

class DataModel: NSObject {
    
    static let dataModel = DataModel()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var fetchedData = [Students]()
    func save(name: String, sub: String) {
        let user = Students(context: context)
        user.name = name
        user.subject = sub
        
        do{
            try context.save()
            print("Save")
        }catch {
           print("Error")
        }
    }
    
    func fetch() {
        do{
            let rslt = try context.fetch(Students.fetchRequest())
            fetchedData = rslt
            print(rslt)
        }catch {
            print("Error")
        }
    }
}
