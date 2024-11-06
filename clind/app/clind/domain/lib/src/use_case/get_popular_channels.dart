import 'package:core_util/util.dart';
import 'package:domain/domain.dart';

class GetPopularChannelsUseCase
    implements IUseCase<List<ChannelEntitiy>, void> {
  final ICommunityRepository _communityRepository;

  GetPopularChannelsUseCase(this._communityRepository);

  @override
  Future<List<ChannelEntitiy>> execute([void params]) {
    return _communityRepository.getPopularChannels();
  }
}
