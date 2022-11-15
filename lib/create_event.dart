import 'dart:io';

import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/home_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:map_location_picker/map_location_picker.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEvent();
}

class _CreateEvent extends State<CreateEvent> {
  final TextEditingController _controller = TextEditingController();

  File? image;
  String dropDownValue = "null";
  String address = "null";
  String autocompletePlace = "null";
  double _value = 0;
  String _status = 'Beginner';

  var items = [
    'Hockey',
    'Soccer',
    'Snowboarding',
    'Skiing',
    'Biking',
    'Table Tennis',
    'Basket Ball',
    'Volley Ball',
    'Golf',
    'Football',
  ];

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) {
        return;
      }

      final tempImg = File(image.path);
      setState(() => this.image = tempImg);
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create New Event"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.grey[900],
      body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[700],
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Event Title",
                                hintStyle: TextStyle(color: Colors.white)
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    image != null ?
                      Image.file(
                        image!,
                        width: 160,
                        height: 160,
                      ) :
                      Container(
                        width: 360,
                        decoration: BoxDecoration(
                            color: Colors.grey[700],
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.image_search,
                          size: 160,
                          color: Colors.white,
                        ),
                      ),

                    const SizedBox(height: 15),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () => pickImage(),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.cyan,
                            ),
                            child: Row(
                              children: const [
                                Icon(Icons.image, size: 20),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Choose Image",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                )
                              ],
                            )
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: DateTimePicker(
                        type: DateTimePickerType.dateTimeSeparate,
                        dateMask: 'd MMM, yyyy',
                        initialValue: DateTime.now().toString(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                        icon: const Icon(Icons.event, color: Colors.white),
                        style: const TextStyle(color: Colors.white),
                        dateLabelText: 'Date',
                        timeLabelText: "Hour",
                        selectableDayPredicate: (date) {
                          // Disable weekend days to select from the calendar
                          if (date.weekday == 6 || date.weekday == 7) {
                            return false;
                          }

                          return true;
                        },
                        onChanged: (val) => print(val),
                        validator: (val) {
                          print(val);
                          return null;
                        },
                        onSaved: (val) => print(val),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: DropdownButton(
                        value: dropDownValue != "null" ? dropDownValue : null,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                        dropdownColor: Colors.grey[700],
                        style: const TextStyle(color: Colors.white),
                        isExpanded: true,
                        hint: const Text(
                          "Select Sport",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),

                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: const TextStyle(fontSize: 16)
                            ),
                          );
                        }).toList(),

                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue = newValue!;
                          });
                        },
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Slider(
                          min: 0.0,
                          max: 100.0,
                          value: _value,
                          divisions: 2,
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          },
                          onChangeEnd: (value) {
                            setState(() {
                              if (value == 0) {
                                _status = 'Beginner';
                              } else if (value == 50) {
                                _status = 'Intermediate';
                              } else {
                                _status = 'Advanced';
                              }
                            });
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Text(
                            'Skill Level: $_status',
                            style: const TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return MapLocationPicker(
                                    apiKey: "AIzaSyAUHHIOzrxh7ZKt4I2GhKhiAxstfjIbmfE",
                                    canPopOnNextButtonTaped: true,
                                    currentLatLng: const LatLng(29.121599, 76.396698),
                                    onNext: (GeocodingResult? result) {
                                      if (result != null) {
                                        setState(() {
                                          address = result.formattedAddress ?? "";
                                        });
                                      }
                                    },
                                    onSuggestionSelected: (PlacesDetailsResponse? result) {
                                      if (result != null) {
                                        setState(() {
                                          autocompletePlace =
                                              result.result.formattedAddress ?? "";
                                        });
                                      }
                                    },
                                  );
                                },
                              ),
                            );
                          },

                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan,
                          ),

                          child: Row(
                            children: const [
                              Icon(Icons.maps_home_work, size: 20),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  "Choose Location",
                                  style: TextStyle(fontSize: 16),
                                ),
                              )
                            ],
                          )
                        ),
                      ),
                    ),

                    address != "null" ?
                      Text(
                        address,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),
                      ) :
                      const SizedBox(height: 0),

                    const SizedBox(height: 20),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: GestureDetector(
                        child: Container(
                          height: 60,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(12.0),
                          ),


                          child: const Center(
                            child: Text(
                              "Create Event",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Home()
                          ));
                        },
                      ),
                    ),

                    const SizedBox(height: 60),
                  ]
                ),
              ),
          )
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[500],
        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search)
            ),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications, color: Colors.grey[850],)
            ),
          ],
        ),
      ),
    );
  }
}