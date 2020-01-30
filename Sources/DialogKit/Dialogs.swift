//
//  Dialogs.swift
//  DMCTuner
//
//  Created by Rick Street on 1/1/2020.
//  Copyright © 2020 Rick Street. All rights reserved.
//

import Cocoa


public func dialogOKCancel(_ message: String, info: String) -> Bool {
    let myPopup: NSAlert = NSAlert()
    myPopup.messageText = message
    myPopup.informativeText = info
    myPopup.alertStyle = NSAlert.Style.warning
    myPopup.addButton(withTitle: "OK")
    myPopup.addButton(withTitle: "Cancel")
    let res = myPopup.runModal()
    if res == NSApplication.ModalResponse.alertFirstButtonReturn {
        return true
    }
    return false
}

public func dialogOK(_ message: String, info: String) -> Bool {
    let myPopup: NSAlert = NSAlert()
    myPopup.messageText = message
    myPopup.informativeText = info
    myPopup.alertStyle = NSAlert.Style.warning
    myPopup.addButton(withTitle: "OK")
    let res = myPopup.runModal()
    if res == NSApplication.ModalResponse.alertFirstButtonReturn {
        return true
    }
    return false
}

public func dialogYesNo(_ message: String, info: String) -> Bool {
    let myPopup: NSAlert = NSAlert()
    myPopup.messageText = message
    myPopup.informativeText = info
    myPopup.alertStyle = NSAlert.Style.warning
    myPopup.addButton(withTitle: "Yes")
    myPopup.addButton(withTitle: "No")
    let res = myPopup.runModal()
    if res == NSApplication.ModalResponse.alertFirstButtonReturn {
        return true
    }
    return false
}

func dialogGetText(_ question: String, info: String) -> String {
    let myPopup: NSAlert = NSAlert()
    myPopup.messageText = question
    myPopup.informativeText = text
    myPopup.alertStyle = NSAlert.Style.warning
    myPopup.addButton(withTitle: "OK")
    let answerfield = NSTextField(frame: NSRect(x: 0.0, y: 0.0, width: 110.0, height: 24.0))
    answerfield.alignment = .left
    myPopup.accessoryView = answerfield
    let res = myPopup.runModal()
    if res == NSApplication.ModalResponse.alertFirstButtonReturn {
        return answerfield.stringValue
    }
    return ""
}
