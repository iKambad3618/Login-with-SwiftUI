//
//  ContentView.swift
//  PMS
//
//  Created by iMac on 19/02/20.
//  Copyright © 2020 Evince Develoment. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State private var showingAlert = false
    @State var strMessage: String = ""
    
    var body: some View {
        
        ZStack{
            VStack{
                
                VStack{
                    ZStack{
                        Color.white
                            .overlay(
                                VStack{
                                    Text("Welcome! to Login System").font(.title).fontWeight(.bold).multilineTextAlignment(.center).padding(.all)
                                    EDTextField(placeHolder: "Email Address", value: $email, lineColor: .black, width: 0.5, isSecure: false, keyboardType: .emailAddress, showEye:false)
                                    EDTextField(placeHolder: "Password", value: $password, lineColor: .black, width: 0.5, isSecure: true, keyboardType: .default, showEye:true)
                                    
                                    EDThemeButton(width: 300, height: 40, buttonTitle: "Sign In") {
                                        if (self.email == "" || self.password == ""){
                                            self.strMessage = Message.AllFields
                                            self.showingAlert = true
                                        }
                                        else{
                                            
                                            //R.K Check that user entered email is correct in format or not
                                            if (isValidEmail(testStr: self.email)){
                                                self.strMessage = Message.moveAhead
                                                self.showingAlert = true
                                            }else{
                                                self.strMessage = Message.validEmail
                                                self.showingAlert = true
                                            }
                                        }
                                    }.padding(.all,20).padding(.top,30)
                                    Spacer()
                                }.padding(.top,50)
                        )
                    }
                    Spacer()
                    
                }.alert(isPresented: $showingAlert) {
                    Alert(title: Text(Message.AppName), message: Text(self.strMessage), dismissButton: .default(Text(ButtonTitles.Ok)))
                }
                Spacer()
            }
        }
    }
}
//R.K Checking email is valid or not, You can make this function into constant or global file also
func isValidEmail(testStr:String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    let result = emailTest.evaluate(with: testStr)
    return result
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
