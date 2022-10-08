import 'package:connectivity_plus/connectivity_plus.dart';

enum NetworkEnums { online, offline }

mixin NetworkStatusMixin {
  NetworkEnums connectionStatus(ConnectivityResult connectivityResult) {
    switch (connectivityResult) {
      case ConnectivityResult.bluetooth:
        return NetworkEnums.offline;
      case ConnectivityResult.wifi:
        return NetworkEnums.online;
      case ConnectivityResult.ethernet:
        return NetworkEnums.offline;
      case ConnectivityResult.mobile:
        return NetworkEnums.online;
      case ConnectivityResult.none:
        return NetworkEnums.offline;
    }
  }
}
