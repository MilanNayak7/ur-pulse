import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../admin/admin_data_model/specialities_list.dart';
import '../../common/card/common_card.dart';
import '../../common/theme/app_theme.dart';


class DoctorRequest extends StatelessWidget {
   DoctorRequest({Key? key}) : super(key: key);

   final _chosenValue = "Please Choose Specialization".obs;
   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

   String _name ='';
   String _appointmentDetail='';
   String _medicalName='';
   String _yearExperience='';
   String _mobileNumber='';
   String _mailId='';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
               // title: const Text("Add Doctor"),
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
                  key:_formKey,
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
                          ),
                        maxLength: 25,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name is Required";
                          }
                          return null;
                        },
                        onSaved:(value){
                          _name = value!;
                        },
                      ),
                      SizedBox(height:Dimensions.d1,),
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name is Required";
                          }
                          return null;
                        },
                        onSaved:(value){
                          _appointmentDetail = value!;
                        },
                      ),
                      SizedBox(height:Dimensions.d5,),
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name is Required";
                          }
                          return null;
                        },
                        onSaved:(value){
                          _medicalName = value!;
                        },
                      ),
                      SizedBox(height:Dimensions.d5,),
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name is Required";
                          }
                          return null;
                        },
                        onSaved:(value){
                          _yearExperience = value!;
                        },
                      ),
                      SizedBox(height:Dimensions.d5,),
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name is Required";
                          }
                          return null;
                        },
                        onSaved:(value){
                          _mobileNumber = value!;
                        },
                      ),
                      SizedBox(height:Dimensions.d5,),
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name is Required";
                          }
                          return null;
                        },
                        onSaved:(value){
                          _mailId = value!;
                        },
                      ),
                      SizedBox(height:Dimensions.d5,),
                      DropdownButton(
                        elevation:8,
                        hint:Obx(()=>_chosenValue != null?Text(_chosenValue.value):Text('Please Choose Specialization'),),
                        items: SpecialitiesList.specialities
                            ?.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,style: const TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                            _chosenValue.value = value!;
                        },
                      ),

                      SizedBox(height:Dimensions.d10,),
                      CommonContainerButton(txt:"Submit", callback:(){
                        if(!_formKey.currentState!.validate()){
                          return;
                        }
                        _formKey.currentState!.save();
                        print(_name);
                        print(_appointmentDetail);
                        print(_medicalName);
                        print(_yearExperience);
                        print(_chosenValue);
                      }),
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
