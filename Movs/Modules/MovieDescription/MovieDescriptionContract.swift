//
//  MovieDescriptionContract.swift
//  ConcreteChallenge_BrunoChagas
//
//  Created by Bruno Chagas on 26/07/19.
//  Copyright © 2019 Bruno Chagas. All rights reserved.
//

import UIKit

/**
 VIPER contract to MovieDescription module
 */

protocol MovieDescriptionView: class {
    var presenter: MovieDescriptionPresentation! { get set }
    
    func showNoContentScreen()
    func showMovieDescription(movie: MovieEntity, genres: String, poster: PosterEntity?)
    func adjustConstraints()
}

protocol MovieDescriptionPresentation: class {
    var view: MovieDescriptionView? { get set }
    var router: MovieDescriptionWireframe! { get set }
    
    func viewDidLoad()
    func didFavoriteMovie()
}

protocol MovieDescriptionWireframe: class {
    static func assembleModule(movie: MovieEntity, genres: [GenreEntity], poster: PosterEntity?) -> UIViewController
}
