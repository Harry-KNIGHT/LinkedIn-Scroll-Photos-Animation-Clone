//
//  ScrollPhotosView.swift
//  LinkedinPhotoReactionsClone
//
//  Created by Elliot Knight on 31/01/2024.
//

import SwiftUI

struct ScrollPhotosView: View {
    @State private var photos = Photo.sample

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(photos) { photo in
                    ZStack(alignment: .bottomTrailing) {
                        Image(photo.ressource)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundStyle(.blue)
                            .font(.title2)
                            .offset(x: 8)
                    }
                }
                .scrollTransition(axis: .horizontal) { effect, phase in
                    effect.scaleEffect(phase.isIdentity ? 1 : 0.3)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ScrollPhotosView()
}

struct Photo: Identifiable, Hashable {
    var id = UUID()
    var ressource: String
}

extension Photo {
    static let sample: [Self] = [
        .init(ressource: "elliot-profile-pic"),
        .init(ressource: "elliot-profile-pic"),
        .init(ressource: "elliot-profile-pic"),
        .init(ressource: "elliot-profile-pic"),
        .init(ressource: "elliot-profile-pic"),
        .init(ressource: "elliot-profile-pic"),
        .init(ressource: "elliot-profile-pic"),
        .init(ressource: "elliot-profile-pic"),
        .init(ressource: "elliot-profile-pic"),
        .init(ressource: "elliot-profile-pic"),
        .init(ressource: "elliot-profile-pic"),
        .init(ressource: "elliot-profile-pic"),
        .init(ressource: "elliot-profile-pic"),
        .init(ressource: "elliot-profile-pic"),
        .init(ressource: "elliot-profile-pic"),
        .init(ressource: "elliot-profile-pic")
    ]
}
