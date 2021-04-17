//
//  HTTPClient.swift
//  HTTPClient
//
//  Created by Hoang Nguyen on 17/04/2021.
//

import Foundation

public protocol Cancelable {
    func cancel()
}

public protocol HTTPClient {
    typealias Result = Swift.Result<(Data, HTTPURLResponse), Error>
    
    /// The completion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropriate threads, if needed.
    @discardableResult
    func get(from url: URL, completion: @escaping (Result) -> Void) -> Cancelable
}
