class EventModel {
  final String? title;
  final String? date;
  final String? time;
  final String? image;
  EventModel({
    this.time,
    this.date,
    this.title,
    this.image,
  });
}

class FriendModel {
  final String? name;
  final String? date;
  final String? age;
  final String? image;
  FriendModel({this.age, this.date, this.image, this.name});
}

List<FriendModel> friendList = [
  FriendModel(
    name: 'Jessica Veranda',
    date: '20 June',
    age: '25th',
    image:
        'https://i.pinimg.com/564x/6e/6d/1e/6e6d1eb0c1ceb25b97f2e5058bd70938.jpg',
  ),
  FriendModel(
    name: 'Nabilah Ratna Ayu',
    date: '23 June',
    age: '20th',
    image:
        'https://i.pinimg.com/564x/5c/5b/62/5c5b627a9aed0575e43ff4f5cc5c6ad3.jpg',
  ),
  FriendModel(
    name: 'Melody Nurramdhani Laksani',
    date: '15 July',
    age: '31th',
    image:
        'https://i.pinimg.com/564x/57/eb/b6/57ebb6b78ae0eb3d044c90ba39a85715.jpg',
  ),
  FriendModel(
    name: 'Cindy Yuvia',
    date: '27 July',
    age: '23th',
    image:
        'https://i.pinimg.com/564x/f7/d7/d1/f7d7d10761e2ba97acac0731fcba34de.jpg',
  ),
  FriendModel(
    name: 'Cindy Gulla',
    date: '17 August',
    age: '23th',
    image:
        'https://i.pinimg.com/564x/80/f0/a7/80f0a7a4db8add54d30053ce8a8d3119.jpg',
  ),
];

List<EventModel> upcommingList = [
  EventModel(
    title: 'Birthday Breakfast',
    date: 'Today',
    time: '10:30 - 14:00',
    image:
        'https://i.pinimg.com/564x/35/00/3d/35003d4286f9c5ca751324e8b81edd12.jpg',
  ),
  EventModel(
    title: 'Company Party',
    date: '1/06/2020',
    time: '08:00 - 10:00',
    image:
        'https://i.pinimg.com/564x/35/00/3d/35003d4286f9c5ca751324e8b81edd12.jpg',
  ),
  EventModel(
    title: 'Wedding Party',
    date: '10/06/2020',
    time: '15:30 - 20:00',
    image:
        'https://i.pinimg.com/564x/35/00/3d/35003d4286f9c5ca751324e8b81edd12.jpg',
  ),
  EventModel(
    title: '4th Anniversary',
    date: '25/06/2020',
    time: '00:00 - 01:00',
    image:
        'https://i.pinimg.com/564x/35/00/3d/35003d4286f9c5ca751324e8b81edd12.jpg',
  ),
  EventModel(
    title: 'Jhon Birthday',
    date: '10/07/2020',
    time: '10:00 - 01:00',
    image:
        'https://i.pinimg.com/564x/35/00/3d/35003d4286f9c5ca751324e8b81edd12.jpg',
  ),
];
List<EventModel> pastList = [
  EventModel(
    title: 'Moury Birthday',
    date: '02/03/2020',
    time: '10:00 - 01:00',
    image:
        'https://i.pinimg.com/564x/35/00/3d/35003d4286f9c5ca751324e8b81edd12.jpg',
  ),
  EventModel(
    title: '1st Anniversary',
    date: '05/03/2020',
    time: '00:00 - 01:00',
    image:
        'https://i.pinimg.com/564x/35/00/3d/35003d4286f9c5ca751324e8b81edd12.jpg',
  ),
  EventModel(
    title: 'Company Party',
    date: '15/03/2020',
    time: '08:00 - 10:00',
    image:
        'https://i.pinimg.com/564x/35/00/3d/35003d4286f9c5ca751324e8b81edd12.jpg',
  ),
  EventModel(
    title: 'Wedding Party',
    date: '22/04/2020',
    time: '15:30 - 20:00',
    image:
        'https://i.pinimg.com/564x/35/00/3d/35003d4286f9c5ca751324e8b81edd12.jpg',
  ),
  EventModel(
    title: 'Birthday Breakfast',
    date: '30/04/2020',
    time: '10:30 - 14:00',
    image:
        'https://i.pinimg.com/564x/35/00/3d/35003d4286f9c5ca751324e8b81edd12.jpg',
  ),
];
