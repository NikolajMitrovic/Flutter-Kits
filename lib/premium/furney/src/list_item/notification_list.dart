
import 'package:ultimate_bundle/premium/furney/src/models/notification_model.dart';

class NotificationList {
  static List<NotificationModel> notificationList() => [
        NotificationModel(
          title: 'Designed with flexibility',
          subtitle:
              // ignore: lines_longer_than_80_chars
              'A workspace should blend into the design of the home - and the designer couple created a comfortable space for the work area. Office furniture such as high adjustable desks, drawers that have wheels… and lots of natural lighting to come in. This is the best place for a productive day!',
          image:
              'https://d2xjmi1k71iy2m.cloudfront.net/dairyfarm/id/pageImages/page_prev_434_en_us_15871031260.jpeg',
          createdAt: DateTime.now(),
        ),
        NotificationModel(
          title: 'Work and eat at the same time',
           // ignore: lines_longer_than_80_chars
          subtitle: "Don't have a work space at home? Does not matter. Turn your dining table into a work table. Portable furniture and an open space makes it easy for you to turn the room into a place to work or rest, and vice versa.",
          image: 'https://d2xjmi1k71iy2m.cloudfront.net/dairyfarm/id/pageImages/page_prev_435_en_us_15871092850.jpeg',
          createdAt: DateTime.now(),
        ),
        NotificationModel(
          title:'Workspace for a variety of activities',
           // ignore: lines_longer_than_80_chars
          subtitle: 'Selesai bekerja, saatnya bermain. Wanita ini senang melakukan beragam aktivitas: yoga, membuat desain, dan bermain game online. Dan dia melakukan ketiga hobinya dalam sebuah ruang kerja yang nyaman.',
          image: 'https://d2xjmi1k71iy2m.cloudfront.net/dairyfarm/id/pageImages/page_prev_436_en_us_15871040090.jpeg',
          createdAt: DateTime.now(),
        ),
        NotificationModel(
          title: 'Traditional style combines with modern conveniences',
           // ignore: lines_longer_than_80_chars
          subtitle: 'Enjoy a neat and clean traditional workspace design with modern functionality. Make your work easier with a workbench that can be adjusted in height according to your needs and a chest of drawers that has a place for labels that makes it easy for you to store and find items.',
          image: 'https://d2xjmi1k71iy2m.cloudfront.net/dairyfarm/id/pageImages/page_prev_437_en_us_15871041740.jpeg',
          createdAt: DateTime.now(),
        ),
      ];
}
