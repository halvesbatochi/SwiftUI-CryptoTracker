//
//  UIApplication.swift
//  SwiftUICrypto
//
//  Created by Henrique Alves Batochi on 29/07/25.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
