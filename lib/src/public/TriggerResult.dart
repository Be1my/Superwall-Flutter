import 'package:superwallkit_flutter/src/public/Experiment.dart';

/// The result of a paywall trigger.
///
/// Triggers can conditionally show paywalls. Contains the possible cases resulting from the trigger.
class TriggerResult {
  final TriggerResultType type;
  final Experiment? experiment;
  final String? error;

  TriggerResult._({required this.type, this.experiment, this.error});

  factory TriggerResult.eventNotFound() => TriggerResult._(type: TriggerResultType.eventNotFound);
  factory TriggerResult.noRuleMatch() => TriggerResult._(type: TriggerResultType.noRuleMatch);
  factory TriggerResult.paywall(Experiment experiment) => TriggerResult._(type: TriggerResultType.paywall, experiment: experiment);
  factory TriggerResult.holdout(Experiment experiment) => TriggerResult._(type: TriggerResultType.holdout, experiment: experiment);
  factory TriggerResult.error(String error) => TriggerResult._(type: TriggerResultType.error, error: error);

  factory TriggerResult.fromJson(Map<dynamic, dynamic> json) {
    switch (json['result']) {
      case 'eventNotFound':
        return TriggerResult.eventNotFound();
      case 'noRuleMatch':
        return TriggerResult.noRuleMatch();
      case 'paywall':
        return TriggerResult.paywall(Experiment(bridgeId: json['experimentBridgeId']));
      case 'holdout':
        return TriggerResult.holdout(Experiment(bridgeId: json['experimentBridgeId']));
      case 'error':
        return TriggerResult.error(json['error']);
      default:
        throw ArgumentError('Invalid TriggerResult type');
    }
  }
}

enum TriggerResultType { eventNotFound, noRuleMatch, paywall, holdout, error }