//
//  VersionManager.swift
//  RealDeviceMapLib
//
//  Created by Florian Kostenzer on 10.05.20.
//

import Foundation
import PerfectLib
import PerfectCURL

public class VersionManager {

    fileprivate struct TagsResponse: Codable {
        fileprivate struct Commit: Codable {
            fileprivate var sha: String
        }
        fileprivate var name: String
        fileprivate var commit: Commit
    }

    public static let global = VersionManager()
    internal let version: String
    internal let commit: String
    internal let url: String

    private init() {
        let sha: String
        let gitBranch: String?
        let version: String
        let shaFile = File("\(Dir.projectroot)/.gitsha")
        do {
            try shaFile.open()
            sha = try shaFile.readString().components(separatedBy: .newlines)[0]
                             .trimmingCharacters(in: .whitespaces)
        } catch {
            sha = "?"
            Log.error(message: "[VersionManager] Failed to read .gitsha")
        }
        let refFile = File("\(Dir.projectroot)/.gitref")
        do {
            try refFile.open()
            let ref = try refFile.readString().components(separatedBy: .newlines)[0]
                                 .trimmingCharacters(in: .whitespaces)
            if ref.starts(with: "refs/heads/") {
                gitBranch = ref.replacingOccurrences(of: "refs/heads/", with: "")
            } else {
                gitBranch = nil
            }
        } catch {
            gitBranch = nil
            Log.error(message: "[VersionManager] Failed to read .gitref")
        }

        if gitBranch == nil {
            let tagsRequest = CURLRequest("https://api.github.com/repos/SkOODaT/RealDeviceMap-SKOO/tags")
            tagsRequest.addHeader(.userAgent, value: "RealDeviceMap-SKOO")
            if let tags = try? tagsRequest.perform().bodyJSON([TagsResponse].self),
               let first = tags.first(where: { $0.commit.sha == sha }) {
                version = "Version \(first.name)"
            } else {
                version = "?"
            }
        } else {
            version = "Git Branch #\(gitBranch!)"
        }

        if gitBranch == nil {
            self.url = "https://github.com/SkOODaT/RealDeviceMap-SKOO/releases"
        } else {
            self.url = "https://github.com/SkOODaT/RealDeviceMap-SKOO/tree/\(gitBranch!)"
        }
        self.version = version
        self.commit = sha

        Log.info(message: "[VersionManager] \(version) (\(sha))")
    }

}
