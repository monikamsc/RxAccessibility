//
//  UIAccessibility+RxSwift.swift
//  RxAccessibility
//
//  Created by Monika on 09.10.19.
//  Copyright © 2019 Monika Mścichowska. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

extension Reactive where Base: UIView {

    /// Bindable sink for `isAccessibilityElement` property.
    public var isAccessibilityElement: Binder<Bool> {
        return Binder(self.base) { view, isAccessible in
            view.isAccessibilityElement = isAccessible
        }
    }

    /// Bindable sink for `accessibilityLabel` property.
    public var accessibilityLabel: Binder<String?> {
        return Binder(self.base) { view, text in
            view.accessibilityLabel = text
        }
    }

    /// Bindable sink for `accessibilityHint` property.
    public var accessibilityHint: Binder<String?> {
        return Binder(self.base) { view, text in
            view.accessibilityHint = text
        }
    }

    /// Bindable sink for `accessibilityValue` property.
    public var accessibilityValue: Binder<String?> {
        return Binder(self.base) { view, text in
            view.accessibilityValue = text
        }
    }

    /**
     Reactive wrapper for `accessibilityIncrement` call.
     */
    public var accessibilityIncrement: Observable<Void> {
        return Observable.of(UIView.accessibilityIncrement())
    }

}
