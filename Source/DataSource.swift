//
//  DataSource.swift
//  Moody
//
//  Created by Florian on 31/08/15.
//  Copyright © 2015 objc.io. All rights reserved.
//


public protocol DataSourceDelegate: class {
    associatedtype Object
    func cellIdentifierForObject(object: Object) -> String
}

public protocol CollectionViewDataSourceDelegate: DataSourceDelegate {
    associatedtype Header: UICollectionReusableView
    associatedtype Footer: UICollectionReusableView
    
    func headerIdentifierForIndexPath(indexPath: NSIndexPath) -> String
    func configureHeader(header: Header, indexPath: NSIndexPath)
    
    func footerIdentifierForIndexPath(indexPath: NSIndexPath) -> String
    func configureFooter(header: Footer, indexPath: NSIndexPath)
}

