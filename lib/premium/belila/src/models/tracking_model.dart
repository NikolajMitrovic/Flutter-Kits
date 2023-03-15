class TrackingModel {
  TrackingModel({
    this.date,
    this.desc,
  });

  String? date;
  String? desc;
}

List<TrackingModel> trackingList = [
  TrackingModel(
    date: '22-08-2021 12:04',
    desc: 'Package has been received. Recipient: Dicky',
  ),
  TrackingModel(
    date: '22-08-2021 10:04',
    desc: 'Package is on its way to your location',
  ),
  TrackingModel(
    date: '21-08-2021 17:57',
    desc: 'The package has arrived at Ketapang where the sorter is',
  ),
  TrackingModel(
    date: '20-08-2021 15:54',
    desc: 'The package has arrived at Pontianak where the sorter is',
  ),
  TrackingModel(
    date: '19-08-2021 20:09',
    desc: 'The package has arrived at Jakarta Utara where the sorter is',
  ),
  TrackingModel(
    date: '19-08-2021 16:54',
    desc: 'The package has arrived at Jakarta Barat where the sorter is',
  ),
  TrackingModel(
    date: '19-08-2021 16:54',
    desc: 'The package has been received by the West Jakarta drop off point',
  ),
  TrackingModel(
    date: '19-08-2021 08:52',
    desc: 'The shipper is preparing your order',
  ),

];
