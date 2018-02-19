//
//  AddKeyCommandViewController.swift
//  TSKeyboardCommands
//
//  Created by Thomas Sillmann on 19.02.18.
//  Copyright © 2018 Thomas Sillmann. All rights reserved.
//

import UIKit

class AddKeyCommandViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addCustomKeyCommands()
    }
    
    private func addCustomKeyCommands() {
        for keyCommand in customKeyCommands {
            addKeyCommand(keyCommand)
        }
    }
    
}
