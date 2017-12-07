//
//  NotificationProtocol.swift
//  Tsuchi
//
//  Created by kazuya-miura on 2017/12/07.
//

import Foundation

public protocol PushNotificationProtocol: Decodable {
    var aps: APS? { get }
}

public struct APS: Decodable {
    public struct Alert: Decodable {
        let body: String?
        let title: String?
    }
    public let alert: Alert?
    public let badge: Int?
    public let sound: String?
}
