import 'package:flutter/material.dart';

class NewProperty extends StatefulWidget {
  @override
  _NewPropertyState createState() => _NewPropertyState();
}

class _NewPropertyState extends State<NewProperty> {
  int selectedPropertyRadio;
  int selectedSharingRadio;

  @override
  void initState() {
    super.initState();
    selectedPropertyRadio = 0;
    selectedSharingRadio = 0;
  }

  setSelectedSharingRadio(int val) {
    setState(() {
      selectedSharingRadio = val;
    });
  }

  setselectedPropertyRadio(int val) {
    setState(() {
      selectedPropertyRadio = val;
    });
  }

  List<String> property = [
    'Flat',
    'Pg',
    '1Sharing',
    '2Sharing',
    '3Sharing',
    '4Sharing'
  ];
  String _selectedProperty;

  List<String> selectLocation = [
    'Kamla Nagar',
    'Shakti Nagar',
    'Vijay Nagar',
    'Kalyan Vihar',
    'GTB Nagar',
    'Hudson Lane',
    'Roop Nagar',
    'Malka Ganj',
    'Mukherjee Nagar',
    'Satya Niketan',
    'Anand Niketan',
    'Moti Bagh',
    'Malviya Nagar',
    'Greater Kailash',
    'Zamrudpur',
    'Kailash Colony',
    'National Park',
    'Moolchand',
    'Amar colony',
    'Dayanand Colony',
    'Vikram Vihar',
    'Anand Lok',
    'Chirag Delhi',
    'Sheikh Sarai',
    'Vasant Enclave',
    'Vasant Gaon'
  ];
  String _selectLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Houseitt"),
        ),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "Basic Information",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 100, right: 100),
              child: Divider(
                thickness: 2,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Property Type",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Row(
                        children: <Widget>[
                          Radio(
                            value: 1,
                            groupValue: selectedPropertyRadio,
                            activeColor: Colors.green,
                            onChanged: (val) {
                              setselectedPropertyRadio(val);
                            },
                          ),
                          new Text(
                            'Flat',
                            style: TextStyle(fontSize: 17),
                          ),
                          new Radio(
                            value: 2,
                            groupValue: selectedPropertyRadio,
                            activeColor: Colors.blue,
                            onChanged: (val) {
                              setselectedPropertyRadio(val);
                            },
                          ),
                          new Text(
                            'Pg',
                            style: TextStyle(fontSize: 17),
                          ),

                          // DropdownButton(
                          //   hint: Text("Please choose an Option"),
                          //   value: _selectedProperty,
                          //   onChanged: (newValue) {
                          //     setState(() {
                          //       _selectedProperty = newValue;
                          //     });
                          //   },
                          //   items: property.map((location) {
                          //     return DropdownMenuItem(
                          //       child: Text(location),
                          //       value: location,
                          //     );
                          //   }).toList(),
                          // )
                        ],
                      ),
                      Text(
                        "Sharing",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Row(
                        children: <Widget>[
                          Radio(
                            value: 3,
                            groupValue: selectedSharingRadio,
                            activeColor: Colors.green,
                            onChanged: (val) {
                              setSelectedSharingRadio(val);
                            },
                          ),
                          new Text(
                            '1',
                            style: TextStyle(fontSize: 17),
                          ),
                          new Radio(
                            value: 4,
                            groupValue: selectedSharingRadio,
                            activeColor: Colors.blue,
                            onChanged: (val) {
                              setSelectedSharingRadio(val);
                            },
                          ),
                          new Text(
                            '2',
                            style: TextStyle(fontSize: 17),
                          ),
                          new Radio(
                            value: 5,
                            groupValue: selectedSharingRadio,
                            activeColor: Colors.blue,
                            onChanged: (val) {
                              setSelectedSharingRadio(val);
                            },
                          ),
                          new Text(
                            '3',
                            style: TextStyle(fontSize: 17),
                          ),
                          new Radio(
                            value: 6,
                            groupValue: selectedSharingRadio,
                            activeColor: Colors.blue,
                            onChanged: (val) {
                              setSelectedSharingRadio(val);
                            },
                          ),
                          new Text(
                            '4',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                      Text(
                        "Rent/Month",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Container(
                          child: TextFormField(
                        keyboardType: TextInputType.number,
                        obscureText: false,
                        autofocus: false,
                        decoration: InputDecoration(hintText: "Rent / Month"),
                      )),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          "Location",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 130, right: 130),
                        child: Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Address",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Container(
                          child: TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: false,
                        autofocus: false,
                        decoration: InputDecoration(hintText: "Address"),
                      )),
                      SizedBox(height: 20),
                      Text(
                        "Select Location",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      DropdownButton(
                        hint: Text("Select Location"),
                        value: _selectLocation,
                        onChanged: (newValue) {
                          setState(() {
                            _selectLocation = newValue;
                          });
                        },
                        items: selectLocation.map((location) {
                          return DropdownMenuItem(
                            child: Text(location),
                            value: location,
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Property Gallery",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Max 8 Photos, Max File Size 2MB",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      SizedBox(height: 10),

                      Container(
                        height: 30,
                        width: 120,
                        child: RaisedButton(
                          color: Colors.redAccent,
                          onPressed: () {},
                          child: Text("Choose Files", style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        )));
  }
}
