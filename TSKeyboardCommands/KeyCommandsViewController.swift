//
//  KeyCommandsViewController.swift
//  TSKeyboardCommands
//
//  Created by Thomas Sillmann on 19.02.18.
//  Copyright © 2018 Thomas Sillmann. All rights reserved.
//

import UIKit

class KeyCommandsViewController: BaseViewController {
    
    override var keyCommands: [UIKeyCommand]? {
        return customKeyCommands
    }
    
}
