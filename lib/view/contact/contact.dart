import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/controller/functions/functions.dart';
import 'package:my_portfolio/global/custom_Color/custom_color.dart';
import 'package:my_portfolio/responsive/responsive.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final formkey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Get In Touch",
            style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          Divider(
            indent: ResponsiveScreen.isWindow(context) ? 300 : 150,
            endIndent: ResponsiveScreen.isWindow(context) ? 300 : 150,
            color: CustomColors.primarywhite,
            thickness: 2,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: CustomColors.primarywhite.withOpacity(.1),
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: FormBuilder(
              key: formkey,
              child: Column(
                children: [
                  FormBuilderTextField(
                    name: "name",
                    keyboardType: TextInputType.name,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      label: Text("Name"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FormBuilderTextField(
                    name: "email",
                    keyboardType: TextInputType.emailAddress,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      label: Text("Email"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FormBuilderTextField(
                    maxLines: 3,
                    name: "message",
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.message),
                      label: Text("Message"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (formkey.currentState!.saveAndValidate()) {
                        final formData = formkey.currentState!.value;
                        SmallFunctions.submitForm(formData);
                        log(formData.toString());
                      } else {
                        print("Validation failed");
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CustomColors.primarywhite),
                      child: Center(
                          child: Text(
                        "SUBMIT",
                        style: TextStyle(
                            color: CustomColors.primaryBlack,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
