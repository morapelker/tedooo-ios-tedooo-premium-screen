import Combine
import UIKit

public enum PremiumResult {
    case didSub(_ vc: UIViewController, _ subUntil: Int64)
    case cancelled(_ vc: UIViewController)
}

public protocol TedoooPremiumScreen {
    
    
    func launchFlow(
        in viewController: UIViewController,
        hasTrial: Bool,
        fromOnBoarding: Bool
    ) -> AnyPublisher<PremiumResult, Never>
    
    func launchFlow(
        inNavController navController: UINavigationController,
        hasTrial: Bool,
        fromOnBoarding: Bool
    ) -> AnyPublisher<PremiumResult, Never>
}
