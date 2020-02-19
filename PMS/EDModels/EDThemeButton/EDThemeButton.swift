//
//  EDThemeButton.swift
//  PMS
//
//  Created by iMac on 19/02/20.
//  Copyright © 2020 Evince Develoment. All rights reserved.
//

import Foundation
import SwiftUI

struct EDThemeButton: View {
    var width: CGFloat //R.K Width of Button
    var height: CGFloat //R.K Height of Button
    var buttonTitle : String //R.K Title of Button
    var action: (() -> Void)?
    var body: some View {
        
        VStack {
            if nil != action {
                Button(action: action!) {
                    HStack {
                        Text(buttonTitle)
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                    .frame(width:width, height: height)
                    .foregroundColor(.white)
                    .background(Color.init(red: 32/255.0, green: 218/255.0, blue: 203/255.0))
                    .cornerRadius(10)
                }
            }
        }
    }
}

extension EDThemeButton {
    func foo(perform action: @escaping () -> Void ) -> Self {
        var copy = self
        copy.action = action
        return copy
    }
}
