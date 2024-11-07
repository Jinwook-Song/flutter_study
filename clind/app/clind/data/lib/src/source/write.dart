import 'package:data/data.dart';

class WriteDataSource {
  final IProfileRemoteDataSource _profileRemoteDataSource;

  WriteDataSource(this._profileRemoteDataSource);

  Future<dynamic> getMe() async {
    return await _profileRemoteDataSource.getMe();
  }
}
