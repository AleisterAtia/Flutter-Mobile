import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({super.key});

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  TextEditingController nidn = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController tanggallahir = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController agama = TextEditingController();
  String? valAgama, valJK;

  get _formKey => null;

  Future selectDate() async {
    DateTime? pickDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1899),
      lastDate: DateTime(2100),
      initialDate: DateTime.now(),
    );
    if (pickDate != null) {
      tanggallahir.text = DateFormat("dd/MM/yyyy").format(pickDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        // key : _formKey
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Center(
                  child: Text('Form Register', style: TextStyle(fontSize: 18)),
                ),
                SizedBox(height: 15),
                CostumeInput(
                  labelInput: 'NIDN',
                  controller: nidn,
                  hintText: '4710710401',
                  textInputType: TextInputType.number,
                ),
                CostumeInput(
                  labelInput: 'Nama',
                  controller: name,
                  hintText: 'fadhilarhab',
                  textInputType: TextInputType.name,
                ),
                CostumeInput(
                  labelInput: 'email',
                  controller: email,
                  hintText: 'fadhilarhab@gmail.com',
                  textInputType: TextInputType.emailAddress,
                ),
                CostumeInput(
                  labelInput: 'tanggal lahir',
                  controller: tanggallahir,
                  hintText: 'dd--mm-yyyy',
                  textInputType: TextInputType.datetime,

                  onTap: () {
                    selectDate();
                  },
                ),
                CostumeInput(
                  labelInput: 'password',
                  controller: password,
                  hintText: '',
                  textInputType: TextInputType.text,
                ),
                SizedBox(height: 15),
                Text("Pendidikan", style: TextStyle(fontSize: 18)),
                SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButton(
                    value: valAgama,
                    underline: Container(),
                    isExpanded: true,
                    items:
                        ["S1(Sarjana)", "S2(Magister)", "S3(Doktor)"].map((e) {
                          return DropdownMenuItem(
                            value: e,
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(e),
                            ),
                          );
                        }).toList(),
                    onChanged: (val) {
                      setState(() {
                        valAgama = val;
                      });
                    },
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                      child: RadioListTile(
                        value: 'Menikah',
                        groupValue: valJK,
                        onChanged: (val) {
                          setState(() {
                            valJK = val;
                          });
                        },
                        title: Text('Menikah'),
                      ),
                    ),
                    Flexible(
                      child: RadioListTile(
                        value: 'Belum Menikah',
                        groupValue: valJK,
                        onChanged: (val) {
                          setState(() {
                            valJK = val;
                          });
                        },
                        title: Text('Belum Menikah'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                CostumeButton(
                  labelbutton: "SAVE",
                  onPressed: () {
                    setState(() {
                      if (_formKey.currentState!.validate()) {
                        if (valAgama != null && valJK != null) {
                        } else {}
                      }
                    });
                  },
                  bgColor: Colors.red,
                  labelcolor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CostumeInput extends StatelessWidget {
  final String labelInput;
  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final bool obsecuretext;
  final VoidCallback? onTap;

  const CostumeInput({
    super.key,
    required this.labelInput,
    required this.controller,
    required this.hintText,
    required this.textInputType,
    this.obsecuretext = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(labelInput, style: TextStyle(fontSize: 18)),
        SizedBox(height: 5),
        TextFormField(
          controller: controller, //mendapatkan input dari user //
          validator: (val) {
            return val!.isEmpty ? "input tidak boleh kosong" : null;
          },
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
          keyboardType: textInputType,
          obscureText: obsecuretext,
          onTap: () {
            // event ketika klik input
            onTap?.call();
          },
        ),
      ],
    );
  }
}

class CostumeRadio extends StatelessWidget {
  final String value;
  final String groupValue;
  final VoidCallback onChange;

  const CostumeRadio({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RadioListTile(
        value: value,
        groupValue: groupValue,
        onChanged: (val) {
          onChange.call();
        },
        title: Text(value),
      ),
    );
  }
}

class CostumeButton extends StatelessWidget {
  final String labelbutton;
  final Color bgColor;
  final VoidCallback onPressed;
  final Color labelcolor;

  const CostumeButton({
    super.key,
    required this.labelbutton,
    required this.onPressed,
    required this.bgColor,
    required this.labelcolor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        backgroundColor: bgColor,
      ),
      onPressed: () {
        onPressed.call();
      },
      child: Text("SAVE", style: TextStyle(color: Colors.white)),
    );
  }
}
