//
//  XMarkButton.swift
//  SwiftUICrypto
//
//  Created by Henrique Alves Batochi on 01/08/25.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
                presentationMode.wrappedValue.dismiss()
        }, label: {
                Image(systemName: "xmark")
                    .font(.headline)
        })
    }
}

#Preview {
    XMarkButton()
}
