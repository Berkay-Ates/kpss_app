import 'package:kpps_app/core/constants/enums/network_enums.dart';

typedef NetworkChangesCallback = void Function(NetworkEnums networkEnums);

abstract class INetworkConnectivity {
  Future<NetworkEnums> checkNetworkConnectivity();
  void manageNetworkConnectivityResult(
      NetworkChangesCallback onNetworkChanged); //? network degisikliklerinde cagrılacaktır
  void dispose();
}
