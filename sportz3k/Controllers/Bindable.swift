//
//  Bindable.swift
//  3K SPORTZ
//
//  Created by Shiv Kalola 07.03.2022
//

import Foundation


class Bindable<T> {
    var value: T? {
        didSet {
            observer?(value)
        }
    }

    var observer: ((T?) -> ())?

    func bind(observer: @escaping (T?) -> ()) {
        self.observer = observer
    }
}
