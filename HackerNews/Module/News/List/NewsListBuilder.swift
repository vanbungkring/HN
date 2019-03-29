//
//  NewsListBuilder.swift
//  HackerNews
//
//  Created by Vanbungkring on 3/25/19.
//  Copyright © 2019 netra. All rights reserved.
//

import UIKit
import Foundation
class NewsListBuilder {
    func assembly() -> UIViewController {
        let router = NewsListRouter()
        let interactor = NewsListInteractor()
        let presenter = NewsListPresenter(interactor: interactor, router: router)
        let viewController = NewsListViewController(presenter:presenter)
        presenter.view = viewController
        return UINavigationController(rootViewController: viewController)
    }
}
