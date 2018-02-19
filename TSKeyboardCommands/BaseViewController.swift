//
//  ViewController.swift
//  TSKeyboardCommands
//
//  Created by Thomas Sillmann on 19.02.18.
//  Copyright © 2018 Thomas Sillmann. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    // MARK: - Properties
    
    let customKeyCommands: [UIKeyCommand] = {
        let helloWorldCommand = UIKeyCommand(input: "P", modifierFlags: .command, action: #selector(printHelloWorld), discoverabilityTitle: "Hello World")
        let upCommand = UIKeyCommand(input: UIKeyInputUpArrow, modifierFlags: .command, action: #selector(printUp), discoverabilityTitle: "Up")
        let escapeCommand = UIKeyCommand(input: UIKeyInputEscape, modifierFlags: .command, action: #selector(printEscape), discoverabilityTitle: "Escape")
        let invisibleCommand = UIKeyCommand(input: "I", modifierFlags: .command, action: #selector(printInvisible))
        let clearLabelCommand = UIKeyCommand(input: "K", modifierFlags: [.command, .control, .alternate], action: #selector(clearLabel), discoverabilityTitle: "Clear")
        return [helloWorldCommand, upCommand, escapeCommand, invisibleCommand, clearLabelCommand]
    }()
    
    @IBOutlet weak var label: UILabel!
    
    // MARK: - Methods
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        becomeFirstResponder()
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    @objc func printHelloWorld() {
        label.text = "Hello World"
    }
    
    @objc func printUp() {
        label.text = "Up"
    }
    
    @objc func printEscape() {
        label.text = "Escape"
    }
    
    @objc func printInvisible() {
        label.text = "Invisible"
    }
    
    @objc func clearLabel() {
        label.text = nil
    }
    
}
