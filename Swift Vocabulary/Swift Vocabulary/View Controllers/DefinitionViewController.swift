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
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        
    }
    
    func updateViews() {
        guard let vocabWord = vocabWord else { return }
        vocabularyWordLabel.text = vocabWord.word
        definitionTextView.text = vocabWord.definition
    }
}
