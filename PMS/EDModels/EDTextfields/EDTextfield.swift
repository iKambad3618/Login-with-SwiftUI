//
//  EDTextfield.swift
//  PMS
//
//  Created by iMac on 19/02/20.
//  Copyright © 2020 Evince Develoment. All rights reserved.
//

import Foundation
import SwiftUI

struct EDTextField: View {
    var placeHolder: String
    
    @Binding var value: String
    
    var lineColor: Color //R.K Bottom border color
    var width: CGFloat //R.K Width of text field
    var isSecure: Bool //R.K Use to make text secure
    var keyboardType:UIKeyboardType //R.K Use to open specific keyboard
    var showEye: Bool  //R.K Use to check Eye symoble for password
    @State private var isSecureFieldChange = true  //State variable for making textfield secore or normal, this will refresh full screen
    
    var body: some View {
        VStack {
            if (self.isSecure){
                //R.K First we check Eye button is there or not
                if showEye {
                    HStack{
                        if self.isSecureFieldChange {
                            SecureField(self.placeHolder, text: $value)
                                .padding()
                                .font(.body)
                                .keyboardType(keyboardType)
                        }
                        else{
                            TextField(self.placeHolder, text: $value)
                                .padding()
                                .font(.body)
                                .keyboardType(keyboardType)
                        }
                        Button(action: {
                            if self.isSecureFieldChange {
                                self.isSecureFieldChange = false
                            }else{
                                self.isSecureFieldChange = true
                            }
                        }){
                            if self.isSecureFieldChange {
                                Image("hide")
                                    .padding(.trailing,20)
                            }else{
                                Image("view")
                                    .padding(.trailing,20)
                            }
                        }
                    }
                }else{
                    SecureField(self.placeHolder, text: $value)
                        .padding()
                        .font(.body)
                        .keyboardType(keyboardType)
                }
            }else{
                TextField(self.placeHolder, text: $value)
                    .padding()
                    .font(.body)
                    .keyboardType(keyboardType)
            }
            //R.K Bottom border only
            Rectangle().frame(height: self.width)
                .padding(.horizontal, 20).foregroundColor(self.lineColor)
        }
    }
}
