//
//  HomeViewController.swift
//  Swift_Jissen_Nyumon
//
//  Created by MasayaNakakuki on 2024/10/31.
//

import RxCocoa
import RxSwift
import UIKit

enum Optional<Wrapped> {
    case none
    case some(Wrapped)
}

final class HomeViewController: UIViewController {
    // MARK: - Dependency
    typealias Dependency = HomeViewModelType

    // MARK: - Properties
    private let optionalHello: String? = "Hello"
    private lazy var viewModel: HomeViewModelType = { fatalError("Use (dependency: ) at initialize controller") }()
    private let disposeBag = DisposeBag()

    // MARK: - Initialize
    init(dependency: Dependency) {
        super.init(nibName: Self.className, bundle: Self.bundle)
        viewModel = dependency
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let haiku = """
        五月雨を
        あつめて早し
        最上川
        """
        print(haiku)

        let number = 123
        let numberToString = String(number)
        print(numberToString)
        bind(to: viewModel)

        let string1 = "Hello"
        let string2 = "World"
        print(string1 == string2)

        let how = "How"
        let are = "are"
        let you = "you"
        let howAreYou = how + are + you
        print(howAreYou)

        let none = Optional<Int>.none
        print(".note: \(none)")

        let some = Optional<Int>.some(123)
        print(".some: \(some)")

        if let hello = optionalHello {
            print(hello)
        }
    }
}

// MARK: - Bind
private extension HomeViewController {
    func bind(to _: Dependency) {
    }
}

// MARK: - ViewControllerInjectable
extension HomeViewController: ViewControllerInjectable {}
