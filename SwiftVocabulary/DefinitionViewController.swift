//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Steven Leyva on 7/15/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
   
    }
    func updateViews() {
        guard let vocabWord = vocabWord, isViewLoaded else { return }
        
        definitionTextView.text = vocabWord.definition
        wordLabel.text = vocabWord.word
        
    }
    

}
