//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Wytze Dijkstra on 15/11/2018.
//  Copyright © 2018 Wytze Dijkstra. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var responses : [Answer]!
    
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [SuperheroType: Int] = [:]
        let responseTypes = responses.map { $0.type }
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        resultAnswerLabel.text = "You are \(mostCommonAnswer.rawValue)!" // shows which superhero you are
        resultDefinitionLabel.text = mostCommonAnswer.definition // shows the definition of the superhero with the most answers
        self.resultImage.image = UIImage(named: "\(mostCommonAnswer.rawValue)") //shows the image of the superhero with the most answers
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
        
    }
    
    
}
