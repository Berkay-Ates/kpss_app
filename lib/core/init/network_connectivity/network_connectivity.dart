import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:kpps_app/core/constants/enums/network_enums.dart';
import 'package:kpps_app/core/init/network_connectivity/network_connectivity_interface.dart';

class NetworkConnectivity extends INetworkConnectivity with NetworkStatusMixin {
  late final Connectivity _connectivity;
  StreamSubscription<ConnectivityResult>? _subscription;

  NetworkConnectivity() {
    _connectivity = Connectivity();
  }

  @override
  Future<NetworkEnums> checkNetworkConnectivity() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    return connectionStatus(connectivityResult);
  }

  @override
  void manageNetworkConnectivityResult(NetworkChangesCallback onNetworkChanged) {
    _subscription = _connectivity.onConnectivityChanged.listen((event) async {
      final connectivityResult = await _connectivity.checkConnectivity();
      onNetworkChanged.call(connectionStatus(connectivityResult));
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
  }
}
