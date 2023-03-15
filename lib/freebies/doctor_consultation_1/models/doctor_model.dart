class DoctorModel {
  final String? name;
  final String? specialist;
  final String? rating;
  final String? reviews;
  final String? academy;
  final String? image;
  DoctorModel({
    this.academy,
    this.name,
    this.rating,
    this.reviews,
    this.specialist,
    this.image,
  });
}

class ConsultationModel {
  final String? title;
  final String? subtitle;
  final String? price;
  ConsultationModel({this.price, this.subtitle, this.title});
}

List<ConsultationModel> consultationList = [
  ConsultationModel(
    title: 'Cardio Issues?',
    price: '100',
    subtitle:
        'For cardio patient here can easily contact with doctor. Can chat & live chat.',
  ),
  ConsultationModel(
    title: 'Dental trouble?',
    price: '80',
    subtitle:
        'For dental patient here can easily contact with doctor. Can chat & live chat.',
  ),
  ConsultationModel(
    title: 'Heart Issues?',
    price: '250',
    subtitle:
        'For heart patient here can easily contact with doctor. Can chat & live chat.',
  ),
  ConsultationModel(
    title: 'Eyes Issues?',
    price: '500',
    subtitle:
        'For eyes patient here can easily contact with doctor. Can chat & live chat.',
  ),
  ConsultationModel(
    title: 'Therapist?',
    price: '50',
    subtitle:
        'For therapist patient here can easily contact with doctor. Can chat & live chat.',
  ),
];

List<DoctorModel> doctorList = [
  DoctorModel(
      name: 'Dr. Jessica Vania',
      rating: '4.5',
      reviews: '80',
      specialist: 'Cardiologist',
      academy: 'Harvard Medical College Hospital',
      image:
          'https://i.pinimg.com/564x/5d/02/1e/5d021e1f19438419eacfbf8dbe3d6f35.jpg'),
  DoctorModel(
      name: 'Dr. Mahmud Nik Hasan',
      rating: '4.9',
      reviews: '27',
      specialist: 'Heart Surgeon',
      academy: 'Dhaka Medical College Hospital',
      image: 'https://i.pinimg.com/564x/f8/6d/7a/f86d7aa07fb89e1ee4b2281c8f582715.jpg'),
  DoctorModel(
      name: 'Dr. Jessie McCaffrey',
      rating: '4.9',
      reviews: '27',
      specialist: 'Therapist',
      academy: 'Los Angeles Medical College Hospital',
      image: 'https://i.pinimg.com/564x/97/53/52/975352ebd5f32f0bdaab8255379f5b3b.jpg'),
  DoctorModel(
      name: 'Dr. Justin Lathia',
      rating: '4.9',
      reviews: '27',
      specialist: 'Dental',
      academy: 'Miami Medical College Hospital',
      image: 'https://i.pinimg.com/564x/d1/ec/b2/d1ecb23797fc262d8860aa83575d4550.jpg'),
  DoctorModel(
      name: 'Dr. Hayley Williams',
      rating: '4.9',
      reviews: '27',
      specialist: 'Cardiologist',
      academy: 'New York Medical College Hospital',
      image: 'https://i.pinimg.com/564x/7b/bf/4b/7bbf4b155ebad4c19893216d021d11c3.jpg'),
  DoctorModel(
      name: 'Dr. Sakura Miyawaki',
      rating: '4.9',
      reviews: '27',
      specialist: 'Cardiologist',
      academy: 'Tokyo University Medical College Hospital',
      image: 'https://i.pinimg.com/564x/71/33/06/7133069aeb6ac9c9bd5f10faa6f06751.jpg'),
];
