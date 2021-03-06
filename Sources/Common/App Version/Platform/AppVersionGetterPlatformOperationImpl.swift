//
//  Copyright © 2016 Cleverlance. All rights reserved.
//

internal final class AppVersionGetterPlatformOperationImpl: AppVersionGetterOperation {

    override func execute(with _: Empty) throws -> AppVersion {
        let string = Bundle.main
            .object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String

        return AppVersion(string ?? "")
    }
}
