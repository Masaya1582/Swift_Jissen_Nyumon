//
//  HomeViewController.swift
//  Swift_Jissen_Nyumon
//
//  Created by MasayaNakakuki on 2024/10/31.
//

import RxCocoa
import RxSwift
import UIKit

final class HomeViewController: UIViewController {
    // MARK: - Dependency
    typealias Dependency = HomeViewModelType

    // MARK: - Properties
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
        bind(to: viewModel)
    }
}

// MARK: - Bind
private extension HomeViewController {
    func bind(to _: Dependency) {
    }
}

// MARK: - ViewControllerInjectable
extension HomeViewController: ViewControllerInjectable {}
