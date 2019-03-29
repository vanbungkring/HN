//
//  NewsListPresenter.swift
//  HackerNews
//
//  Created by Vanbungkring on 3/25/19.
//  Copyright © 2019 netra. All rights reserved.
//

import UIKit

class NewsListPresenter {
    var view : NewsListViewController?
    private let router : NewsListRouter
    private let interactor :NewsListInteractor
    
    init(interactor:NewsListInteractor, router:NewsListRouter) {
        self.router = router
        self.interactor = interactor
    }
    func fetchHeadlineNews()  {
        return interactor.requestFeedHackerNews()
        
    }
}
