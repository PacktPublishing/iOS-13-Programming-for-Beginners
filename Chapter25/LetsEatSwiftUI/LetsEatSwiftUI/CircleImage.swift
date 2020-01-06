//
//  CircleImage.swift
//  LetsEatSwiftUI
//
//  Created by admin on 07/12/2019.
//  Copyright © 2019 MyName. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("taptrailhouse").clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
