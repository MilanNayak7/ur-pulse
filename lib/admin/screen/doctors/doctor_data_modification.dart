import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/card/common_card.dart';
import 'package:ur_pulse_modified/common/theme/app_theme.dart';

import '../../admin_data_model/specialities_list.dart';

class DoctorDataModification extends StatefulWidget {
  const DoctorDataModification({Key? key}) : super(key: key);

  @override
  State<DoctorDataModification> createState() => _DoctorDataModificationState();
}

class _DoctorDataModificationState extends State<DoctorDataModification> {
   String? _chosenValue = "Please Choose Specialization";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("Add Doctor"),
                background: Image.network(
                  "https://img.freepik.com/free-photo/photo-young-female-doctor-make-okaysign-blue_496169-2165.jpg?t=st=1656566099~exp=1656566699~hmac=9a733fac4c61d5c28062ab677a045eb67bb0e503dba1d5ce0d711c447a0299eb&w=1060",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.d3),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Dimensions.d8,
                      ),
                      Text(
                        "Add Doctors Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Dimensions.d7),
                      ),
                      SizedBox(
                        height: Dimensions.d7,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black45, width: 2.0),
                                borderRadius:
                                BorderRadius.circular(Dimensions.d2)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black45, width: 2.0),
                                borderRadius:
                                BorderRadius.circular(Dimensions.d2)),
                            labelText: "Enter Doctor Name",
                            hintText: "Milan Kumar Nayak"),
                        maxLength: 25,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name is Required";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black45, width: 2.0),
                                borderRadius:
                                    BorderRadius.circular(Dimensions.d2)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black45, width: 2.0),
                                borderRadius:
                                    BorderRadius.circular(Dimensions.d2)),
                            labelText: "Appointment Address",
                            hintText: ""),
                        maxLength: 25,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name is Required";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black45, width: 2.0),
                                borderRadius:
                                BorderRadius.circular(Dimensions.d2)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black45, width: 2.0),
                                borderRadius:
                                BorderRadius.circular(Dimensions.d2)),
                            labelText: "Medical Name",
                            hintText: ""),
                        maxLength: 25,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name is Required";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black45, width: 2.0),
                                borderRadius:
                                BorderRadius.circular(Dimensions.d2)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black45, width: 2.0),
                                borderRadius:
                                BorderRadius.circular(Dimensions.d2)),
                            labelText: "Enter Year of Experience",
                            hintText: ""),
                        maxLength: 25,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name is Required";
                          }
                          return null;
                        },
                      ),

                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black45, width: 2.0),
                                borderRadius:
                                BorderRadius.circular(Dimensions.d2)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black45, width: 2.0),
                                borderRadius:
                                BorderRadius.circular(Dimensions.d2)),
                            labelText: "Enter Mobile Number",
                            hintText: ""),
                        maxLength: 25,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name is Required";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black45, width: 2.0),
                                borderRadius:
                                BorderRadius.circular(Dimensions.d2)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black45, width: 2.0),
                                borderRadius:
                                BorderRadius.circular(Dimensions.d2)),
                            labelText: "Enter Mail Address",
                            hintText: ""),
                        maxLength: 25,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name is Required";
                          }
                          return null;
                        },
                      ),

                      DropdownButton(
                        alignment:AlignmentDirectional.bottomEnd,
                        elevation:8,
                        hint:_chosenValue != null?Text(_chosenValue!):Text('Please Choose Specialization'),
                        items: SpecialitiesList.specialities
                            ?.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,style: const TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            _chosenValue = value;
                          });
                        },
                      ),

                      SizedBox(height:Dimensions.d10,),
                      CommonContainerButton(txt: 'Submit', callback: () {},),
                      SizedBox(height:Dimensions.d10,),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
