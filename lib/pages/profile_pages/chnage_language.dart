import 'package:delivery_app/consts/colors.dart';
import 'package:delivery_app/model/change_langauge_model.dart';
import 'package:delivery_app/pages/profile_pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../custom_widgets/custom_text.dart';
import '../../custom_widgets/mybutton.dart';
import '../../custom_widgets/our_text.dart';


class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({super.key});

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}
List<ChangeLanguageModel> list=[
  ChangeLanguageModel("English", false),
  ChangeLanguageModel("Urdu", false),
  ChangeLanguageModel("Afrikaans", false),
  ChangeLanguageModel("Filipino", false),
  ChangeLanguageModel("Hausa", false),
  ChangeLanguageModel("Suomi", false),
  ChangeLanguageModel("Magyar", false),
  ChangeLanguageModel("Italiano", false),
  ChangeLanguageModel("Gaeilge", false),
  ChangeLanguageModel("Polski", false),
  ChangeLanguageModel("Turkey", false),
  ChangeLanguageModel("France", false),
  ChangeLanguageModel("Oromoo", false),
];

class _ChangeLanguageState extends State<ChangeLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackGround,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: blackColor,
        backgroundColor: whiteBackGround,
        title: const OurText(
            text: "Change Language",
            fontSize: 24,
            fontBold: FontWeight.bold,
            textColor: dallBlackColor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 610,width: double.infinity,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                activeColor: yellowColor,
                                value: list[index].isSelected,
                                onChanged: (value) {
                                  list[index].isSelected = value!;
                                  setState(() {});
                                },),
                              CustomText(text: list[index].names)
                            ],
                          )
                        ],
                      );
                    }
                ),
              ),
              MyButton(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
                },
                height: 52,
                circularRadius: BorderRadius.circular(10),
                text: "Save",
                containerColor: yellowColor,
                color: whiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}