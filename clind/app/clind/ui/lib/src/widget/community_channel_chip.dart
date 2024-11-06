import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:tool_clind_component/component.dart';

class CommunityChannelChip extends ClindChannelChip {
  const CommunityChannelChip({
    super.key,
    required super.imageUrl,
    required super.name,
    required super.onTap,
  });

  factory CommunityChannelChip.item(
    Channel channel, {
    required VoidCallback onTap,
  }) {
    return CommunityChannelChip(
      imageUrl: channel.imageUrl,
      name: channel.name,
      onTap: onTap,
    );
  }
}
