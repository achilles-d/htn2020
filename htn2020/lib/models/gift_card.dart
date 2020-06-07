class GiftCard{

    String name;
    String img_url;
    String address;
    String contact;

    GiftCard(String _name, String _img_url, String _address, String _contact){
      this.name = _name;
      this.img_url = _img_url;
      this.address = _address;
      this.contact = _contact;
    }

    String getName(){
      return this.name;
    }

    String getImageUrl(){
      return this.img_url;
    }

    String getAddress(){
      return this.address;
    }

    String getContact(){
      return this.contact;
    }


}