//
//  ToDoTableViewController.swift
//  productivePuppies
//
//  Created by Maryam Noori on 6/29/22.
//


import UIKit

class ToDoTableViewController: UITableViewController {
    var toDos : [ToDoCD] = []

    
    
   
    
    func getToDos() {
      if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
        if let coreDataToDos = try? context.fetch(ToDoCD.fetchRequest()) as? [ToDoCD] {
                toDos = coreDataToDos
                tableView.reloadData()
        }
      }
    }
   
    
    
   override func viewDidLoad() {
      
     super.viewDidLoad()
       getToDos()
    }
        
    override func viewWillAppear(_ animated: Bool) {
            getToDos()
        }
    
      //  func createToDos() -> [ToDo] {
       //   let swift = ToDo()
        //  swift.name = "Learn Swift"
       //  swift.important = true
      //  let dog = ToDo()
       //   dog.name = "Walk the Dog"
   //   return [swift, dog]
     //   }
       

        
     //override func numberOfSections(in tableView: UITableView) -> Int {
     //   return 0
    //}
        
      override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return toDos.count
        }
        

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

      let toDo = toDos[indexPath.row]

      if let name = toDo.name {
        if toDo.important {
            cell.textLabel?.text = "❗️" + name
        } else {
            cell.textLabel?.text = toDo.name
        }
      }

      return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            let toDo = toDos[indexPath.row]
            
            performSegue(withIdentifier: "moveToComplete", sender: toDo)
        }
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let addVC = segue.destination as? AddToDoViewController {
        addVC.previousVC = self
      }
        if let completeVC = segue.destination as? CompleteToDoViewController {
            
            if let toDo = sender as? ToDoCD {
                completeVC.selectedToDo = toDo
              completeVC.previousVC = self
            }
            
        }
    }
         // override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    // let toDo = toDos[indexPath.row]
   //  performSegue(withIdentifier: "moveToComplete", sender: toDo)
   //}
    
   // override func viewWillAppear(_ animated: Bool) {
   //   getToDos()
  //  }

    
    }
