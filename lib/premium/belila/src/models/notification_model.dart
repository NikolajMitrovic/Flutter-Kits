class NotificationModel {
  NotificationModel({
    this.id,
    this.transactionCode,
    this.products,
    this.notifications,
  });

  int? id;
  String? transactionCode;
  List<NotificationProduct>? products;
  List<NotificationStatusModel>? notifications;
}

class NotificationStatusModel {
  NotificationStatusModel({
    this.id,
    this.status,
    this.createdAt,
    this.read,
  });

  int? id;
  String? status;
  DateTime? createdAt;
  int? read;
}

class NotificationProduct {
  NotificationProduct({
    this.id,
    this.image,
  });

  int? id;
  List<String>? image;
}

List<NotificationModel> notificationList = [
  NotificationModel(
    id: 1,
    transactionCode: '12323232',
    products: [
      NotificationProduct(
        id: 12,
        image: [
          'https://i.pinimg.com/564x/4f/21/eb/4f21eb38058aada1f433671b20658d19.jpg',
          'https://i.pinimg.com/564x/6d/fb/4c/6dfb4c70e7054967f151d3e11212fb9b.jpg',
        ],
      ),
    ],
    notifications: [
      NotificationStatusModel(
        id: 1,
        read: 0,
        status: 'process',
        createdAt: DateTime.parse('2021-09-25 09:49:22'),
      ),
      NotificationStatusModel(
        id: 2,
        read: 0,
        status: 'packaging',
        createdAt: DateTime.parse('2021-09-25 09:49:22'),
      ),
      NotificationStatusModel(
        id: 3,
        read: 0,
        status: 'on_delivery',
        createdAt: DateTime.parse('2021-09-25 09:49:22'),
      ),
      NotificationStatusModel(
        id: 4,
        read: 0,
        status: 'success',
        createdAt: DateTime.parse('2021-09-25 09:49:22'),
      ),
    ],
  ),
  NotificationModel(
    id: 221,
    transactionCode: '33222322',
    products: [
      NotificationProduct(
        id: 12,
        image: [
         'https://i.pinimg.com/564x/a2/f1/5c/a2f15ce77893135b864f8891861c1810.jpg',
          'https://i.pinimg.com/564x/a2/f1/5c/a2f15ce77893135b864f8891861c1810.jpg',
        ],
      ),
    ],
    notifications: [
      NotificationStatusModel(
        id: 1,
        read: 0,
        status: 'process',
        createdAt: DateTime.parse('2021-09-25 09:49:22'),
      ),
      NotificationStatusModel(
        id: 2,
        read: 0,
        status: 'packaging',
        createdAt: DateTime.parse('2021-09-25 09:49:22'),
      ),
      NotificationStatusModel(
        id: 3,
        read: 0,
        status: 'on_delivery',
        createdAt: DateTime.parse('2021-09-25 09:49:22'),
      ),
      NotificationStatusModel(
        id: 4,
        read: 0,
        status: 'success',
        createdAt: DateTime.parse('2021-09-25 09:49:22'),
      ),
    ],
  ),
];
