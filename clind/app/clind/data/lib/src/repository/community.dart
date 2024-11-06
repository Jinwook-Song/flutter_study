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

  @override
  Future<List<ChannelEntitiy>> getPopularChannels() async {
    final List<dynamic> jsonList =
        await _communityDataSource.getPopularChannels();
    final List<ChannelModel> models =
        jsonList.map((json) => ChannelModel.fromJson(json)).toList();
    return models.map((m) => m.toEntity()).toList();
  }

  @override
  Future<List<PostEntity>> getPosts({int? take, int? page}) async {
    final List<dynamic> jsonList =
        await _communityDataSource.getPosts(take: take, page: page);
    final List<PostModel> models =
        jsonList.map((json) => PostModel.fromJson(json)).toList();
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

extension on PostModel {
  PostEntity toEntity() {
    return PostEntity(
        id: id,
        imageUrl: imageUrl,
        channel: channel,
        company: company,
        title: title,
        content: content,
        thumbnailUrls: thumbnailUrls,
        isLike: isLike,
        likeCount: likeCount,
        commentCount: commentCount,
        viewCount: viewCount,
        createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt));
  }
}
