//
//  Dialogs.swift
//  DMCTuner
//
//  Created by Rick Street on 1/1/2020.
//  Copyright © 2020 Rick Street. All rights reserved.
//  Updated 2021

import Cocoa

/// Dialog Ok with cancel
/// - Parameters:
///   - message: Short messate
///   - info: Detalied message
/// - Returns: true or false for cancel
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

/// Dialog Ok
/// - Parameters:
///   - message: Short Message
///   - info: Detaliled message
/// - Returns: true or false
public func dialogOK(_ message: String, info: String) -> Bool {
    let myPopup: NSAlert = NSAlert()
    myPopup.messageText = message
    myPopup.informativeText = info
    myPopup.alertStyle = NSAlert.Style.informational
    myPopup.addButton(withTitle: "OK")
    let res = myPopup.runModal()
    if res == NSApplication.ModalResponse.alertFirstButtonReturn {
        return true
    }
    return false
}


/// Dialog Warning
/// - Parameters:
///   - message: Short Message
///   - info: Detaliled message
/// - Returns: true or false
public func dialogWarning(_ message: String, info: String) -> Bool {
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


/// Dialog Yes No
/// - Parameters:
///   - message: Short message
///   - info: Detalied message
/// - Returns: True for yes, false for no
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

/// Dialog get text
/// - Parameters:
///   - question: Short question
///   - info: Detlied information
/// - Returns: Text enterred by user, "" if nothing enterred.
public func dialogGetText(_ question: String, info: String) -> String {
    let myPopup: NSAlert = NSAlert()
    myPopup.messageText = question
    myPopup.informativeText = info
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
