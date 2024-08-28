//
//  AddTripView.swift
//  SwiftUI_CoreData_24
//
//  Created by Igor Polousov on 28.08.2024.
//

import SwiftUI
import CoreData

struct AddTripView: View {
    
    @State private var viewName = "Add Trip"
    @State private var tripName = ""
    @State private var image: Image?
    @State private var inputImage: UIImage?
    @State private var isShowingImagePicker = false
    @State private var isShowingAlert = false
    @State private var isShowingPhotoAccessAlert = false
    
    @EnvironmentObject private var coreDataStack: CoreDataStack
    
    @Binding var isShowingAddTripView: Bool
    
    var body: some View {
        ZStack {
            Color.black
                .opacity(0.55)
                .edgesIgnoringSafeArea(.all)
            
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.themeBackground)
                    .modifier(AddTripViewModifier(heigt: 200, bottomPadding: 330))
                
                image?
                    .imageModifier()
                    //.resizable()
                    //.aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                    .cornerRadius(10)
                    .padding(.bottom, 330)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    //.clipped()
                
                VStack {
                    HStack {
                        Text(viewName)
                            .frame(width: 170)
                            .font(Font.mainFont)
                            .shadow(color: .white, radius: 5, x: 3,y: 3)
                            //.padding(.top, 30)
                        
                        Spacer()
                        
                        Button {
                            isShowingImagePicker = true
                        } label: {
                            Image("camera")
                                .applyCameraImage()
                            
                        }
                        .padding(.trailing, 30)
                    }
                    
                    TextField("  Enter trip name", text: $tripName)
                        .modifier(TextFieldModifier())
                }
                .padding(.bottom, 330)
           
        }
    }
}

#Preview {
    AddTripView(isShowingAddTripView: .constant(true) )
}
