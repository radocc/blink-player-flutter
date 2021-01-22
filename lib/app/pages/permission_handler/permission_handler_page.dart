import 'package:permission_handler/permission_handler.dart';

class PermissionsService {
  final PermissionHandler _permissionHandler = PermissionHandler();

  Future<bool> _requestPermission(PermissionGroup permission) async {
    var result = await _permissionHandler.requestPermissions([permission]);
    if (result[permission] == PermissionStatus.granted) {
      return true;
    }
    return false;
  }

  Future<bool> requestStoragePermissionInUse() async {
    return _requestPermission(PermissionGroup.locationWhenInUse);
  }

  Future<bool> requestPermission(List<PermissionGroup> permissions,
      {Function onPermissionDenied, Function onPermissionAproved}) async {
    var granted = true;
    for (var i = 0; i < permissions.length; i++) {
      if (!await _requestPermission(permissions[i])) {
        granted = false;
      }
    }

    if (!granted) {
      onPermissionDenied();
    } else {
      onPermissionAproved();
    }
    return granted;
  }
}