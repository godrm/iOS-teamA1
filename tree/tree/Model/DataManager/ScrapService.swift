//
//  ScrapService.swift
//  tree
//
//  Created by Hyeontae on 03/02/2019.
//  Copyright © 2019 gardener. All rights reserved.
//

import Foundation
import UIKit

enum ScrappedArticleProperty {
    case articleAuthor
    case articleDescription
    case company
    case articleDate
    case image
    case isRead
    case language
    case scrappedDate
    case articleTitle
    case articleUri
    case category
    
    func toString() -> String {
        return "\(self)"
    }
}

public enum ArticleCategory: CaseIterable{
    case all
    case arts
    case business
    case computers
    case games
    case health
    case home
    case recreation
    case reference
    case regional
    case science
    case shopping
    case society
    case sports

    func toString() -> String {
        return "\(self)"
    }
    
    func capitalFirstCharactor() -> String {
        let baseCategory: NSString = NSString(string: "\(self)")
        let firstCharactor = baseCategory.character(at: 0)
        guard let unicode = UnicodeScalar(firstCharactor - 32) as? UnicodeScalar else {
            return ""
        }
        let result = baseCategory.replacingCharacters(
            in: NSRange(location: 0, length: 1),
            with: String(Character(unicode))
        )
        return result
    }
    
    var gradientColors: [CGColor] {
        switch self {
        case .all:
            return [UIColor(hexString: "#f6416c").cgColor,
                    UIColor(hexString: "#fff6b7").cgColor]
        case .arts:
            return [UIColor(hexString: "#7b4397").cgColor,
                    UIColor(hexString: "#dc2430").cgColor]
        case .business:
            return [UIColor(hexString: "#667eea").cgColor,
                    UIColor(hexString: "#764ba2").cgColor]
        case .computers:
            return [UIColor(hexString: "#a3bded").cgColor,
                    UIColor(hexString: "#6991c7").cgColor]
        case .games:
            return [UIColor(hexString: "#13547a").cgColor,
                    UIColor(hexString: "#80d0c7").cgColor]
        case .health:
            return [UIColor(hexString: "#93a5cf").cgColor,
                    UIColor(hexString: "#e4efe9").cgColor]
        case .home:
            return [UIColor(hexString: "#ff9a9e").cgColor,
                    UIColor(hexString: "#fad0c4").cgColor]
        case .recreation:
            return [UIColor(hexString: "#868f96").cgColor,
                    UIColor(hexString: "#596164").cgColor]
        case .reference:
            return [UIColor(hexString: "#c79081").cgColor,
                    UIColor(hexString: "#dfa579").cgColor]
        case .regional:
            return [UIColor(hexString: "#29323c").cgColor,
                    UIColor(hexString: "#485563").cgColor]
        case .science:
            return [UIColor(hexString: "#1e3c72").cgColor,
                    UIColor(hexString: "#2a5298").cgColor]
        case .shopping:
            return [UIColor(hexString: "#B7F8DB").cgColor,
                    UIColor(hexString: "#50A7C2").cgColor]
        case .society:
            return [UIColor(hexString: "#cc2b5e").cgColor,
                    UIColor(hexString: "#753a88").cgColor]
        case .sports:
            return [UIColor(hexString: "#42275a").cgColor,
                    UIColor(hexString: "#734b6d").cgColor]
        }
    }
}