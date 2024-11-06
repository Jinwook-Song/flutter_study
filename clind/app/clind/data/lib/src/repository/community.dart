import 'package:data/data.dart';
import 'package:domain/domain.dart';

class CommunityRepository implements ICommunityRepository {
  final CommunityDataSource _communityDataSource;

  CommunityRepository(this._communityDataSource);

  @override
  Future<List<ChannelEntitiy>> getChannels() async {
    // api response -> data model -> domain entity
    final List<dynamic> jsonList = await _communityDataSource.getChannels();
    final List<ChannelModel> models =
        jsonList.map((json) => ChannelModel.fromJson(json)).toList();
    return models.map((m) => m.toEntity()).toList();
  }
}

extension on ChannelModel {
  ChannelEntitiy toEntity() {
    return ChannelEntitiy(
      id: id,
      name: name,
      imageUrl: imageUrl,
      followCount: followCount,
    );
  }
}
