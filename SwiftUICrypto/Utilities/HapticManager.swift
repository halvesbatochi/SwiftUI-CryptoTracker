//
//  HapticManager.swift
//  SwiftUICrypto
//
//  Created by Henrique Alves Batochi on 02/08/25.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}


