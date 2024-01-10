import com.superwall.superwallkit_flutter.json.JsonExtensions

fun JsonExtensions.Companion.logScopeFromJson(json: String): LogScope? {
    return when (json) {
        "localizationmanager" -> LogScope.localizationManager
        "bouncebutton" -> LogScope.bounceButton
        "coredata" -> LogScope.coreData
        "configmanager" -> LogScope.configManager
        "identitymanager" -> LogScope.identityManager
        "debugmanager" -> LogScope.debugManager
        "debugviewcontroller" -> LogScope.debugViewController
        "localizationviewcontroller" -> LogScope.localizationViewController
        "gamecontrollermanager" -> LogScope.gameControllerManager
        "device" -> LogScope.device
        "network" -> LogScope.network
        "paywallevents" -> LogScope.paywallEvents
        "productsmanager" -> LogScope.productsManager
        "storekitmanager" -> LogScope.storeKitManager
        "events" -> LogScope.events
        "receipts" -> LogScope.receipts
        "superwallcore" -> LogScope.superwallCore
        "paywallpresentation" -> LogScope.paywallPresentation
        "paywalltransactions" -> LogScope.paywallTransactions
        "paywallviewcontroller" -> LogScope.paywallViewController
        "nativepurchasecontroller" -> LogScope.nativePurchaseController
        "cache" -> LogScope.cache
        "all" -> LogScope.all
        else -> null
    }
}