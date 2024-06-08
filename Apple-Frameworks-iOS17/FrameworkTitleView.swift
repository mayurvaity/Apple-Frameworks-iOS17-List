//
//  FrameworkTitleView.swift
//  Apple-Frameworks-iOS17
//
//  Created by Mayur Vaity on 08/06/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        //padding - to add padding around vstack
        HStack {
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
            //scaledToFit - to adjust the font size if needed
            //minimumScaleFactor - minimum font scaling
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
