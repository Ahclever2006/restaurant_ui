class MenuModel {
  String _title,_image, _menuItems, _time, _stars;

  MenuModel(this._title, this._image, this._menuItems, this._stars, this._time);

  String get title => _title;

  String get image => _image;
  String get menuItems => _menuItems;
  String get time => _time;
  String get stars => _stars;

}
List<MenuModel> getMenuCards() {
  List<MenuModel> menuCards = [
    MenuModel('Special Menu', 'https://publichealth.com.ng/wp-content/uploads/2017/07/slider.png', '6', '4.6', '9AM - 5PM'),
    MenuModel('African Dishes', 'https://www.africa.com/wp-content/uploads/2017/05/1-Couscous.jpg', '6', '4.6', '9AM - 5PM'),
    MenuModel('Soft Drinks', 'https://i.dailymail.co.uk/1s/2019/09/04/11/18054190-0-image-a-5_1567591819996.jpg', '6', '4.6', '9AM - 5PM')
  ];
  return menuCards;
}