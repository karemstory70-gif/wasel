import 'package:flutter/material.dart';
import 'package:wasel/feature/auth/Widgets/coustem_text_field.dart';
import 'package:flutter/services.dart';
import 'package:wasel/feature/home/screens/payment_method.dart';


class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController cardController =
  TextEditingController(text: "____ ____ ____");
  final TextEditingController dateController =
  TextEditingController(text: "MM/YYYY");
  final TextEditingController cycController = TextEditingController(text: "* * * *");

  String numbers = "";
  String dateNumbers = "";

  void updateCard(String value) {

    numbers = value.replaceAll("_", "").replaceAll(" ", "");

    if (numbers.length > 12) {
      numbers = numbers.substring(0, 12);
    }

    String result = "____ ____ ____";

    for (int i = 0; i < numbers.length; i++) {
      result = result.replaceFirst("_", numbers[i]);
    }

    cardController.value = TextEditingValue(
      text: result,
      selection: TextSelection.collapsed(
        offset: numbers.length +
            (numbers.length ~/ 4),
      ),
    );
  }
  void updateCyc(String value) {


    numbers = value.replaceAll("*", "").replaceAll(" ", "");

    if (numbers.length > 4) {
      numbers = numbers.substring(0, 4);
    }

    String result = "* * * *";

    for (int i = 0; i < numbers.length; i++) {
      result = result.replaceFirst("*", numbers[i]);
    }

    cycController.value = TextEditingValue(
      text: result,
      selection: TextSelection.collapsed(
        offset: numbers.length * 2,
      ),
    );
  }

  void updateDate(String value) {

    dateNumbers = value
        .replaceAll("/", "")
        .replaceAll("M", "")
        .replaceAll("Y", "");

    if (dateNumbers.length > 6) {
      dateNumbers = dateNumbers.substring(0, 6);
    }

    String result = "MM/YYYY";

    for (int i = 0; i < dateNumbers.length; i++) {

      if (i < 2) {
        result = result.replaceFirst("M", dateNumbers[i]);
      } else {
        result = result.replaceFirst("Y", dateNumbers[i]);
      }
    }

    dateController.value = TextEditingValue(
      text: result,
      selection: TextSelection.collapsed(
        offset: dateNumbers.length >= 2
            ? dateNumbers.length + 1
            : dateNumbers.length,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.close,size: 26,color: Color(0xFF181C2E),)
          ),
          title: Text("Add Card",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xFF181C2E)),),
          centerTitle: false,
        ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 24,),
              Text("card holder name",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xFFA0A5BA)),),
              SizedBox(height: 10,),
              CoustemTextField(
                controller: nameController,
                hint: 'Name',
                isBassword: false,
              ),
              SizedBox(height: 24,),
              Text("Card number",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xFFA0A5BA)),),
              SizedBox(height: 10,),
              TextField(
                controller: cardController,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                onChanged: updateCard,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
                  fillColor: const Color(0xffF0F5FA),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFF0F5FA)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFF0F5FA)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    child: Column(
                      children: [

                        Text(
                          "expire date",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xFFA0A5BA),
                          ),
                        ),

                        SizedBox(height: 10),

                        TextField(
                          controller: dateController,

                          keyboardType: TextInputType.number,

                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],

                          onChanged: updateDate,

                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),

                            fillColor: const Color(0xffF0F5FA),
                            filled: true,

                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xffF0F5FA),
                              ),

                              borderRadius: BorderRadius.circular(8),
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xffF0F5FA),
                              ),

                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    width: 150,
                    child: Column(
                      children: [

                        Text(
                          "cvc",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xFFA0A5BA),
                          ),
                        ),

                        SizedBox(height: 10),

                        TextField(
                          controller: cycController,

                          keyboardType: TextInputType.number,

                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          onChanged: updateCyc,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),

                            fillColor: const Color(0xffF0F5FA),
                            filled: true,

                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xffF0F5FA),
                              ),

                              borderRadius: BorderRadius.circular(8),
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xffF0F5FA),
                              ),

                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
      bottomSheet: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(

          width: double.infinity,
          height: 70,

          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFF7622),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Paymentmethod()));
            },
            child: Text("Add & Make Payment",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w700,

              ),
            ),
          ),
        ),
      ),
    );
  }
}
