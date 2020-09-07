//
//  ViewController.swift
//  MirbGUI
//
//  Created by user on 2020/09/03.
//

import Cocoa
import MRubyKit

class ViewController: NSViewController {
    let textView = NSTextView()
    let textScrollView = NSScrollView()
    let codeField = NSTextField(string: "")
    
    let mruby = MRuby()

    override func loadView() {
        textView.autoresizingMask = .width
        textScrollView.documentView = textView
        textScrollView.hasVerticalScroller = true
        let stackView = NSStackView(views: [
            textScrollView,
            codeField
        ])
        stackView.orientation = .vertical
        view = stackView
        
        textView.textColor = .labelColor
        textView.string = "Please input mruby expression and hit enter!"
        textView.isEditable = true
        codeField.target = self
        codeField.action = #selector(execute)
        
        NSLayoutConstraint.activate([
            view.widthAnchor.constraint(greaterThanOrEqualToConstant: 100),
            view.heightAnchor.constraint(greaterThanOrEqualToConstant: 100),
        ])
        
        title = "mruby irb in Cocoa GUI! mruby version: \(mruby.."MRUBY_VERSION")"
    }
    
    @objc func execute() {
        textView.string = mruby.eval(source: codeField.stringValue).description
    }
}
