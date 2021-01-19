//
//  RespondToKeyboardViewController.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 1/4/21.
//

import UIKit

class RespondToKeyboardViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(adjustToKeyboardChange(notification:)),
            name: UIResponder.keyboardWillHideNotification,
            object: nil
        )
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(adjustToKeyboardChange(notification:)),
            name: UIResponder.keyboardWillChangeFrameNotification,
            object: nil
        )
    }
    
    @objc func adjustToKeyboardChange(notification: Notification){
        guard let keyboardFrameEnd = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else {
            return
        }
        let screenRect = keyboardFrameEnd.cgRectValue
        let viewRect = view.convert(screenRect, from: view.window)
        
        if notification.name == UIResponder.keyboardWillHideNotification {
            textView.contentInset = .zero
        } else {
            textView.contentInset = .init(top: 0, left: 0, bottom: viewRect.height - view.safeAreaInsets.bottom, right: 0)
        }
        
        textView.scrollIndicatorInsets = textView.contentInset
        let range = textView.selectedRange
        textView.scrollRangeToVisible(range)
    }
}
