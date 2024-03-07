enum NotificationType {
  tossPay('토스페이', 'assets/image/notification/notification_toss.png'),
  luck('토스페이', 'assets/image/notification/notification_luck.png'),
  people('토스페이', 'assets/image/notification/notification_people.png'),
  stock('토스페이', 'assets/image/notification/notification_stock.png'),
  walk('토스페이', 'assets/image/notification/notification_walk.png'),
  moneyTip('토스페이', 'assets/image/notification/notification_idea.png');

  const NotificationType(this.name, this.iconPath);

  final String iconPath;
  final String name;
}
