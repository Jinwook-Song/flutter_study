import 'package:community_data/data.dart';
import 'package:community_domain/domain.dart';

class CommunityRepository implements ICommunityRepository {
  final CommunityDataSource _communityDataSource;

  CommunityRepository(this._communityDataSource);

  @override
  Future<List<Channel>> getChannels() async {
    // api response -> data model -> domain entity
    final List<dynamic> jsonList = await _communityDataSource.getChannels();
    return jsonList.map((json) => Channel.fromJson(json)).toList();
    // final List<ChannelModel> models =
    //     jsonList.map((json) => ChannelModel.fromJson(json)).toList();
    // return models.map((m) => m.toEntity()).toList();
  }

  @override
  Future<List<Channel>> getPopularChannels() async {
    final List<dynamic> jsonList =
        await _communityDataSource.getPopularChannels();
    return jsonList.map((json) => Channel.fromJson(json)).toList();

    // final List<ChannelModel> models =
    //     jsonList.map((json) => ChannelModel.fromJson(json)).toList();
    // return models.map((m) => m.toEntity()).toList();
  }

  @override
  Future<List<Post>> getPosts({int? take, int? page}) async {
    final List<dynamic> jsonList =
        await _communityDataSource.getPosts(take: take, page: page);
    return jsonList.map((json) => Post.fromJson(json)).toList();
    // final List<PostModel> models =
    //     jsonList.map((json) => PostModel.fromJson(json)).toList();
    // return models.map((m) => m.toEntity()).toList();
  }
}

// extension on ChannelModel {
//   ChannelEntitiy toEntity() {
//     return ChannelEntitiy(
//       id: id,
//       name: name,
//       imageUrl: imageUrl,
//       followCount: followCount,
//     );
//   }
// }

// extension on PostModel {
//   PostEntity toEntity() {
//     return PostEntity(
//         id: id,
//         imageUrl: imageUrl,
//         channel: channel,
//         company: company,
//         title: title,
//         content: content,
//         thumbnailUrls: thumbnailUrls,
//         isLike: isLike,
//         likeCount: likeCount,
//         commentCount: commentCount,
//         viewCount: viewCount,
//         createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt));
//   }
// }
