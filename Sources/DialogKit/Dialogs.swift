//
//  Dialogs.swift
//  DMCTuner
//
//  Created by Rick Street on 1/1/2020.
//  Copyright © 2020 Rick Street. All rights reserved.
//

import Cocoa


public func dialogOKCancel(_ question: String, text: String) -> Bool {
    let myPopup: NSAlert = NSAlert()
    myPopup.messageText = question
    myPopup.informativeText = text
    myPopup.alertStyle = NSAlert.Style.warning
    myPopup.addButton(withTitle: "OK")
    myPopup.addButton(withTitle: "Cancel")
    let res = myPopup.runModal()
    if res == NSApplication.ModalResponse.alertFirstButtonReturn {
        return true
    }
    return false
}

public func dialogOK(_ question: String, text: String) -> Bool {
    let myPopup: NSAlert = NSAlert()
    myPopup.messageText = question
    myPopup.informativeText = text
    myPopup.alertStyle = NSAlert.Style.warning
    myPopup.addButton(withTitle: "OK")
    let res = myPopup.runModal()
    if res == NSApplication.ModalResponse.alertFirstButtonReturn {
        return true
    }
    return false
}

public func dialogYesNo(_ question: String, text: String) -> Bool {
    let myPopup: NSAlert = NSAlert()
    myPopup.messageText = question
    myPopup.informativeText = text
    myPopup.alertStyle = NSAlert.Style.warning
    myPopup.addButton(withTitle: "Yes")
    myPopup.addButton(withTitle: "No")
    let res = myPopup.runModal()
    if res == NSApplication.ModalResponse.alertFirstButtonReturn {
        return true
    }
    return false
}
