import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:tool_clind_component/component.dart';

class CommunityPostCard extends ClindPostCard {
  CommunityPostCard({
    super.key,
    required super.imageUrl,
    required super.channel,
    required super.company,
    required super.createdAt,
    required super.title,
    required super.onChannelTapped,
    required super.onCompanyTapped,
    required super.onLikeTapped,
    required super.onCommentTapped,
    required super.onViewTapped,
    required super.onTap,
  });

  factory CommunityPostCard.item(
    Post post, {
    required VoidCallback onChannelTapped,
    required VoidCallback onCompanyTapped,
    required VoidCallback onLikeTapped,
    required VoidCallback onCommentTapped,
    required VoidCallback onViewTapped,
    required VoidCallback onTap,
  }) {
    return CommunityPostCard(
      imageUrl: post.imageUrl,
      channel: post.channel,
      company: post.company,
      createdAt: post.createdAt,
      title: post.title,
      onChannelTapped: onChannelTapped,
      onCompanyTapped: onCompanyTapped,
      onLikeTapped: onLikeTapped,
      onCommentTapped: onCommentTapped,
      onViewTapped: onViewTapped,
      onTap: onTap,
    );
  }
}
