//
//  ViewController.swift
//  toDoList
//
//  Created by Arika Afrin Boshra on 11/3/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var todo : [String] = ["Take medicine","Preparing Breakfast","Check Mail","Go to GYM"]
    @IBOutlet weak var todoTableView: UITableView!
    
    @IBAction func addTodo(_ sender: Any) {
    let todoAlert = UIAlertController(title: "Add Todo", message: "Add a new Todo", preferredStyle: .alert)
    todoAlert.addTextField()
        let addTodoAction = UIAlertAction(title: "Add", style: .default) { (action) in
            let newTodo = todoAlert.textFields![0]
            self.todo.append(newTodo.text!)
            self.todoTableView.reloadData()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .default)
        
        todoAlert.addAction(addTodoAction)
        todoAlert.addAction(cancelAction)
        
        present(todoAlert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        todoTableView.dataSource = self
        todoTableView.delegate = self
        todoTableView.rowHeight = 80
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath) as! todoCell
        
        cell.todoLabel.text = todo[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! todoCell
        
        if cell.checked == false{
            cell.checkMark.image = UIImage(named: "checkmark")
            cell.checked = true
        }
        else{
            cell.checkMark.image = nil
            cell.checked = false
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            todo.remove(at: indexPath.row)
            todoTableView.reloadData()
        }
    }
    
}

