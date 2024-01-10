extension BridgingCreator {
  struct Constants {
    static let bridgeTypes: [BridgeInstance.Type] = [
      SuperwallBridge.self,
      SuperwallDelegateProxyBridge.self,
      PurchaseControllerProxyBridge.self,
      CompletionBlockProxyBridge.self,
      SubscriptionStatusActiveBridge.self,
      SubscriptionStatusInactiveBridge.self,
      SubscriptionStatusUnknownBridge.self,
      PaywallPresentationHandlerProxyBridge.self,
      PaywallSkippedReasonHoldoutBridge.self,
      PaywallSkippedReasonNoRuleMatchBridge.self,
      PaywallSkippedReasonEventNotFoundBridge.self,
      PaywallSkippedReasonUserIsSubscribedBridge.self,
      ExperimentBridge.self,
      PaywallInfoBridge.self,
      PurchaseResultCancelledBridge.self,
      PurchaseResultPurchasedBridge.self,
      PurchaseResultRestoredBridge.self,
      PurchaseResultPendingBridge.self,
      PurchaseResultFailedBridge.self,
      RestorationResultRestoredBridge.self,
      RestorationResultFailedBridge.self,
    ]
  }
}

extension BridgingCreator.Constants {
  static let bridgeMap: [String: BridgeInstance.Type] = {
    return bridgeTypes.reduce(into: [String: BridgeInstance.Type]()) { map, type in
      map[type.bridgeClass] = type
    }
  }()
}
