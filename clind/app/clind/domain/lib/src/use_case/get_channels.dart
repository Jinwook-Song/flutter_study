import 'package:core_util/util.dart';
import 'package:domain/domain.dart';

class GetChannelsUseCase implements IUseCase<List<ChannelEntitiy>, void> {
  final ICommunityRepository _communityRepository;

  GetChannelsUseCase(this._communityRepository);

  @override
  Future<List<ChannelEntitiy>> execute([void params]) {
    return _communityRepository.getChannels();
  }
}
