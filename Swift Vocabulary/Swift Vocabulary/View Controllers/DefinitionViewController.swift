//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Marc Jacques on 10/24/20.
//

import UIKit

class DefinitionViewController: UIViewController {
   
    @IBOutlet weak var vocabularyWordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    var word: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vocabularyWordLabel.text = word?.word
        definitionTextView.text = word?.definition

        
    }
}
