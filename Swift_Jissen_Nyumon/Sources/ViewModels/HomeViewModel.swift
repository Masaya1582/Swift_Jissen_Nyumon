//
//  HomeViewModel.swift
//  Swift_Jissen_Nyumon
//
//  Created by MasayaNakakuki on 2024/10/31.
//

import RxSwift
import RxCocoa
import Action

protocol HomeViewModelInputs: AnyObject {
    // Define the inputs here
}

protocol HomeViewModelOutputs: AnyObject {
    // Define the outputs here
}

protocol HomeViewModelType: AnyObject {
    var inputs: HomeViewModelInputs { get }
    var outputs: HomeViewModelOutputs { get }
}

final class HomeViewModel: HomeViewModelType, HomeViewModelInputs, HomeViewModelOutputs {
    var inputs: HomeViewModelInputs { return self }
    var outputs: HomeViewModelOutputs { return self }

    init() {

    }
}
