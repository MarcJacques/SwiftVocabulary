//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Marc Jacques on 10/24/20.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabularyWords = [VocabularyWord]()
    
    let variable = VocabularyWord(word: "Variable", definition: "Is a mutable property used to store various data types. The value or data can be updated. In Swift, variables are is indicated by 'var.'")
    let constant = VocabularyWord(word: "Constant", definition: "An immutable property used to store various data types. The value or data stored can not be changed. In Swift, a constant is indicated by 'let'.")
    let function = VocabularyWord(word: "Function", definition: "Is code that can be reused. This is usually a set of instructions or commands to get an expected output. In Swift, functions are indicated by 'func'.")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vocabularyWords = [variable, constant, function]
        
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabularyWords.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let word = vocabularyWords[indexPath.row]
        cell.textLabel?.text = word.word
        
        return cell
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let definitionVC = segue.destination as? DefinitionViewController,
                  let indexPath = tableView.indexPathForSelectedRow else {
                return
            }
            let vocabWord = vocabularyWords[indexPath.row]
            definitionVC.word = vocabWord
        }
        // Pass the selected object to the new view controller.
    }
    
    
}
