//
//  ViewController.swift
//  CoreDataSaveFetch
//
//  Created by Rabin on 21/03/23.
//

import UIKit

class StudentViewController: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var textFieldSubject: UITextField!
    @IBOutlet weak var textFieldName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func buttonActionSave(_ sender: UIButton) {
         let value = DataModel.dataModel.fetchedData.contains(where: {
            $0.name == textFieldName.text && $0.subject == textFieldSubject.text
        })
        if !value {
            DataModel.dataModel.save(name: textFieldName.text ?? "", sub: textFieldSubject.text ?? "")
            tblView.reloadData()
        }else {
            print("Already exit")
        }
        
    }
    
    @IBAction func buttonActionFetch(_ sender: UIButton) {
        let value = DataModel.dataModel.fetchedData.contains(where: {
           $0.name == textFieldName.text && $0.subject == textFieldSubject.text
       })
        if !value {
            DataModel.dataModel.fetch()
            tblView.reloadData()
        }else {
            print("Already exit")
        }
       
    }
    
}

extension StudentViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataModel.dataModel.fetchedData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath) as! StudentTableViewCell
        cell.labelName.text = DataModel.dataModel.fetchedData[indexPath.row].name
        cell.labelName.textColor = .blue
        cell.labelSubject.text = DataModel.dataModel.fetchedData[indexPath.row].subject
        cell.labelSubject.textColor = .red
        textFieldName.text = ""
        textFieldSubject.text = ""
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}
