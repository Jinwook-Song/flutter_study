import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/product/vo_product.dart';
import 'package:fast_app_base/entity/product_post/vd_product_post.dart';
import 'package:fast_app_base/entity/user/vo_address.dart';
import 'package:fast_app_base/entity/user/vo_user.dart';

String picSum(int id) {
  return 'https://picsum.photos/id/$id/200/200';
}

final user1 = User(
  id: 1,
  nickname: '홍길동',
  temperature: 36.5,
  avatarUrl: picSum(100),
);

final user2 = User(
  id: 2,
  nickname: '바다',
  temperature: 16.5,
  avatarUrl: picSum(200),
);
final user3 = User(
  id: 3,
  nickname: '제임스',
  temperature: 40,
  avatarUrl: picSum(300),
);

final product1 = Product(
  user: user1,
  name: '아이폰15',
  price: 1000000,
  description: 'A 급',
  images: [
    picSum(500),
    picSum(123),
    picSum(612),
    picSum(297),
  ],
);
final product2 = Product(
  user: user1,
  name: '로봇청소기',
  price: 218390,
  description: '중고',
  images: [
    picSum(214),
    picSum(314),
    picSum(70),
  ],
);
final product3 = Product(
  user: user1,
  name: '시계',
  price: 182490,
  description: '방수',
  images: [
    picSum(711),
    picSum(28),
  ],
);

final post1 = ProductPost(
  user: product1.user,
  product: product1,
  content: '상품 설명',
  address: Address(fullAddress: '서울 사근동', simpleAddress: '플러터'),
  chatCount: 30,
  likeCount: 70,
  createdAt: DateTime.now().subtract(1.hours),
);
final post2 = ProductPost(
  user: product2.user,
  product: product2,
  content: '글 내용',
  address: Address(fullAddress: '서울 왕십리', simpleAddress: '한양대'),
  chatCount: 3,
  likeCount: 22,
  createdAt: DateTime.now().subtract(4.days),
);
final post3 = ProductPost(
  user: product1.user,
  product: product1,
  content: '신제품입니다',
  address: Address(fullAddress: '대전광역시 대덕구', simpleAddress: '송촌동'),
  chatCount: 89,
  likeCount: 200,
  createdAt: DateTime.now().subtract(30.minutes),
);

final postList = [post1, post2, post3, post1, post2, post3];
