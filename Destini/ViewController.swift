//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Our strings
    let story1 = "Pewnej wietrznej deszczowej nocy, jadąc przez nadmorski las, przebijasz oponę. Telefon właśnie się rozładował, więc postanawiasz złapać stopa. Po chwili zatrzymuje się przed tobą stary mercedes. Mężczyzna z blizną biegnącą wzdłuż twarzy otwiera drzwi pasażera i pyta: \"Potrzebujesz podwózki?\""
    let answer1a = "Pewnie, dzięki!"
    let answer1b = "Lepiej zapytam, czy nie jest przypadkiem mordercą..."
    
    
    let story2 = "Wzdycha ciężko i kiwa przecząco głową z dezaprobatą. \"Wsiadasz czy nie?\""
    let answer2a = "Przynajmniej jest szczery, wchodzę."
    let answer2b = "Poczekaj, chyba potrafię sam zmienić oponę."
    
    let story3 = "Gdy ruszacie, nieznajomy zaczyna opowiadać ci o swojej relacji z matką. Z minuty na minutę staje się coraz bardziej nerwowy. Każe otworzyć ci schowek. W środku zauważasz zakrwawiony nóż i płytę z przebojami Maryli Rodowicz. Mężczyzna sięga reką do schowka."
    let answer3a = "\"Kocham Marylę!\" - krzyczysz, po czym podajesz mu płytę."
    let answer3b = "\"Albo ja, albo on.\"  - myślisz. Chwytasz za nóż i dźgasz kierowcę."
    
    let story4 = "\"Co? To w takim razie powodzenia! Wiesz, że wypadki samochodowe są drugą najczęstszą przyczyną śmierci młodych osób?\" - słyszysz, gdy samochód odjeżdża z piskiem opon."
    let story5 = "Gdy spadając z urwiska, widzisz przed sobą wzburzone fale czarnej toni, przychodzi ci do głowy myśl. Może zadźganie kogoś, kto prowadzi samochód, w którym się znajdujusz, nie było najmądrzejszym pomysłem."
    let story6 = "Nawiązujesz więź z mordercą słuchając wspólnie \"Małgośki\". Mężczyzna wysadza cię w najbliższym mieście. Przed odjazdem pyta cię, czy znasz jakieś dobre miejsce, aby pozbyć się ciała. Odpowiadasz: \"Spróbuj zrzucić z klifu.\""
    
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    // TODO Step 5: Initialise instance variables here
    var storyIndex : Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        storyTextView.text = story1
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
        storyIndex = 1
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        // TODO Step 4: Write an IF-Statement to update the views
        
        if (sender.tag == 1 && storyIndex == 1) || (sender.tag == 1 && storyIndex == 2) {
            storyTextView.text = story3
            topButton.setTitle(answer3a, for: .normal)
            bottomButton.setTitle(answer3b, for: .normal)
            storyIndex = 3
            
        } else if sender.tag == 2 && storyIndex == 1 {
            storyTextView.text = story2
            topButton.setTitle(answer2a, for: .normal)
            bottomButton.setTitle(answer2b, for: .normal)
            storyIndex = 2
        } else if sender.tag == 2 && storyIndex == 2 {
            storyTextView.text = story4
            topButton.setTitle("Może przeżyjesz", for: .normal)
            bottomButton.setTitle("Restart", for: .normal)
            storyIndex = 4
        } else if sender.tag == 1 && storyIndex == 3 {
            
            storyTextView.text = story6
            topButton.setTitle("Przeżywasz", for: .normal)
            bottomButton.setTitle("Restart", for: .normal)
            storyIndex = 6
            
        } else if sender.tag == 2 && storyIndex == 3 {
            storyTextView.text = story5
            topButton.setTitle("Umierasz", for: .normal)
            bottomButton.setTitle("Restart", for: .normal)
            storyIndex = 5
        } else if sender.tag == 2 && storyIndex > 3 {
            storyTextView.text = story1
            topButton.setTitle(answer1a, for: .normal)
            bottomButton.setTitle(answer1b, for: .normal)
            storyIndex = 1
        }
        
                
        // TODO Step 6: Modify the IF-Statement to complete the story
        
    
    }
    



}

