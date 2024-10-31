//
//  UICollectionView.swift
//  Swift_Jissen_Nyumon
//
//  Created by MasayaNakakuki on 2024/10/31.
//

import UIKit

extension UICollectionView {
    // swiftlint:disable force_cast
    func dequeueReusableCell<T: UICollectionViewCell>(_: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: T.className, for: indexPath) as! T
    }

    func dequeueReusableCell<T: UICollectionViewCell>(_: T.Type, identifier: String, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! T
    }

    func dequeueReusableSupplementaryView<T: UICollectionReusableView>(_: T.Type, ofKind kind: String, for indexPath: IndexPath) -> T {
        return dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: T.className, for: indexPath) as! T
    }
    // swiftlint:enable force_cast
}

extension UICollectionView {
    func registerCell<T: UICollectionViewCell>(_: T.Type) {
        register(UINib(nibName: T.className, bundle: Bundle(for: T.self)), forCellWithReuseIdentifier: T.className)
    }

    func registerCell<T: UICollectionViewCell>(_: T.Type, identifier: String) {
        register(UINib(nibName: T.className, bundle: Bundle(for: T.self)), forCellWithReuseIdentifier: identifier)
    }

    func registerSupplementaryView<T: UICollectionReusableView>(_: T.Type, ofKind kind: String) {
        register(UINib(nibName: T.className, bundle: Bundle(for: T.self)), forSupplementaryViewOfKind: kind, withReuseIdentifier: T.className)
    }
}

extension UICollectionView {
    func deselectAllItems(animated: Bool) {
        indexPathsForSelectedItems?.forEach { deselectItem(at: $0, animated: animated) }
    }
}
