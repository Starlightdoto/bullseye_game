//
//  TextViews.swift
//  BullsEye
//
//  Created by Almas on 11.02.2023.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .fontWeight(.black)
            .kerning(-1.0)
            .font(.largeTitle)
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderLabelText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35.0)
    }
}

struct LabelText: View {
    var text: String

    var body: some View {
        
        Text(text.uppercased())
            .bold()
            .foregroundColor(Color("TextColor"))
            .kerning(1.5)
            .font(.caption)
    }
}


struct BodyText: View {
    var text: String

    var body: some View {
        
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
    }
}

struct ButtonText: View {
    var text: String

    var body: some View {
        
        Text(text)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                Color.accentColor
            )
            .foregroundColor(Color.white)
            .cornerRadius(12.0)

    }
}

struct TextViews_Previews: PreviewProvider {
    
    static var previews: some View {
        VStack {
            LabelText(text: "Score")
            ButtonText(text: "Start New Round")
        }
        
    }
}
