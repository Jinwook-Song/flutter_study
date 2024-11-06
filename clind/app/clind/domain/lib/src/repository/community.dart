import 'package:domain/domain.dart';

abstract class ICommunityRepository {
  Future<List<ChannelEntitiy>> getChannels();
  Future<List<ChannelEntitiy>> getPopularChannels();
}
