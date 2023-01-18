import 'package:connectivity_plus/connectivity_plus.dart'
    show Connectivity, ConnectivityResult;

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectivity;

  NetworkInfoImpl({required this.connectivity});

  @override
  Future<bool> get isConnected =>
      connectivity.checkConnectivity().then((ConnectivityResult result) {
        switch (result) {
          case ConnectivityResult.bluetooth:
            return false;
          case ConnectivityResult.wifi:
            return true;
          case ConnectivityResult.ethernet:
            return true;
          case ConnectivityResult.mobile:
            return true;
          case ConnectivityResult.none:
            return false;
          case ConnectivityResult.vpn:
            return false;
        }
      });
}
