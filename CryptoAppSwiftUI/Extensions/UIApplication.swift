//
//  UIApplication.swift
//  CryptoAppSwiftUI
//
//  Created by Ruslan Magomedov on 30.03.2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
