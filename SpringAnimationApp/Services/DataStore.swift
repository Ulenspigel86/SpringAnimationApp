//
//  DataStore.swift
//  SpringAnimationApp
//
//  Created by Артем Иванов on 14.12.2024.
//

import SpringAnimation

final class DataStore {
    
    static let available = DataStore()
    
    let animationTypes: [AnimationPreset] = [
        .fadeIn,
        .fadeInDown,
        .fadeInLeft,
        .fadeInRight,
        .fadeInUp,
        .fadeOut,
        .fadeOutIn,
        .fall,
        .flash,
        .flipX,
        .flipY,
        .morph,
        .shake,
        .slideDown,
        .slideLeft,
        .slideRight,
        .slideUp,
        .squeeze,
        .squeezeDown,
        .squeezeLeft,
        .squeezeRight,
        .squeezeUp,
        .swing,
        .zoomIn,
        .wobble,
        .zoomOut,
        .pop
    ]
    
    let curveTypes: [AnimationCurve] = [
        .easeIn,
        .easeOut,
        .easeInOut,
        .linear,
        .spring,
        .easeInSine,
        .easeOutSine,
        .easeInOutSine,
        .easeInQuad,
        .easeOutQuad,
        .easeInOutQuad,
        .easeInCubic,
        .easeOutCubic,
        .easeInOutCubic,
        .easeInQuart,
        .easeOutQuart,
        .easeInOutQuart,
        .easeInQuint,
        .easeOutQuint,
        .easeInOutQuint,
        .easeInExpo,
        .easeOutExpo,
        .easeInOutExpo,
        .easeInCirc,
        .easeOutCirc,
        .easeInOutCirc,
        .easeInBack,
        .easeOutBack,
        .easeInOutBack
    ]
    
    private init() {}
}
