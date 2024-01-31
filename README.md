# LinkedIn Scroll Photos Animation Clone

A SwiftUI-based clone of LinkedIn post reactions with animated pictures implemented using iOS 17's `ScrollView` API.

![Demo](https://github.com/Harry-KNIGHT/LinkedIn-Scroll-Photos-Animation-Clone/assets/63256761/8ec51fd4-61ad-42a8-8d96-77d614582ff3)

To achieve the animated effect demonstrated above, apply the following modifier to your `ScrollView`. Feel free to customize it according to your preferences:

```swift
.scrollTransition(axis: .horizontal) { effect, phase in
   effect.scaleEffect(phase.isIdentity ? 1 : 0.3)
}
