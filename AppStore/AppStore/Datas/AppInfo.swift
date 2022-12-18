//
//  AppInfo.swift
//  AppStore
//
//  Created by AsGuard on 2022/12/18.
//

import Foundation

struct AppInfo: Decodable, Equatable, Identifiable, Sendable {
    var id: String? {
        bundleId
    }
    
    let screenshotUrls: [String]?
    let features: [String]?
    let ipadScreenshotUrls: [String]?
    let appletvScreenshotUrls: [String]?
    let artworkUrl60: String?
    let artworkUrl512: String?
    let artworkUrl100: String?
    let artistViewUrl: String?
    let advisories: [String]?
    let isGameCenterEnabled: Bool?
    let kind: String?
    let supportedDevices: [String]?
    let currency: String?
    let fileSizeBytes: String?
    let sellerUrl: String?
    let formattedPrice: String?
    let contentAdvisoryRating: String?
    let averageUserRatingForCurrentVersion: Double?
    let userRatingCountForCurrentVersion: Double?
    let averageUserRating: Double?
    let trackViewUrl: String?
    let trackContentRating: String?
    let currentVersionReleaseDate: String?
    let releaseNotes: String?
    let minimumOsVersion: String?
    let description: String?
    let isVppDeviceBasedLicensingEnabled: Bool?
    let trackCensoredName: String?
    let languageCodesISO2A: [String]?
    let bundleId: String?
    let genreIds: [String]?
    let sellerName: String?
    let releaseDate: String?
    let primaryGenreName: String?
    let primaryGenreId: Double?
    let trackId: Double?
    let trackName: String?
    let version: String?
    let wrapperType: String?
    let price: Double?
    let artistId: Double?
    let artistName: String?
    let genres: [String]?
    let userRatingCount: Double?
}
