import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageRegisterDua extends StatefulWidget {
  const PageRegisterDua({super.key});

  @override
  State<PageRegisterDua> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegisterDua> {
  TextEditingController nidn = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController tanggalLahir = TextEditingController();
  TextEditingController alamat = TextEditingController();
  String? valAgama, valJk, inputForm;
  final _formKey = GlobalKey<FormState>();

  Future selectDate() async {
    DateTime? pickDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
      initialDate: DateTime.now(),
    );
    if (pickDate != null) {
      tanggalLahir.text = DateFormat("dd-MM-yyyy").format(pickDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text("Form Register", style: TextStyle(fontSize: 18)),
                ),
                CostumInput(
                  labelInput: "NIDN",
                  controller: nidn,
                  hintText: "76196991",
                  textInputType: TextInputType.name,
                ),
                SizedBox(height: 15),
                CostumInput(
                  labelInput: "Name",
                  controller: name,
                  hintText: "Fadhil Dzaky Arhab",
                  textInputType: TextInputType.name,
                ),

                SizedBox(height: 15),
                CostumInput(
                  labelInput: "Tanggal Lahir",
                  controller: tanggalLahir,
                  hintText: "dd/mm/yy",
                  textInputType: TextInputType.datetime,
                  onTap: () {
                    selectDate();
                  },
                ),
                SizedBox(height: 15),
                CostumInput(
                  labelInput: "Alamat",
                  controller: alamat,
                  hintText: "Alamat",
                  textInputType: TextInputType.text,
                ),
                SizedBox(height: 15),
                Text('Pendidikan', style: TextStyle(fontSize: 18)),
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
                SizedBox(height: 15),
                Text('Status', style: TextStyle(fontSize: 18)),
                SizedBox(height: 5),
                Row(
                  children: [
                    CostumRadio(
                      value: "Menikah",
                      groupValue: valJk.toString(),
                      onChange: (val) {
                        setState(() {
                          valJk = val;
                        });
                      },
                    ),
                    CostumRadio(
                      value: "Single",
                      groupValue: valJk.toString(),
                      onChange: (val) {
                        setState(() {
                          valJk = val;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 15),
                CostumButton(
                  labelButton: "SAVE",
                  onPressed: () {
                    setState(() {
                      if (_formKey.currentState!.validate()) {
                        if (valAgama != null && valJk != null) {
                          inputForm =
                              "NIDN :${nidn.text}\n"
                              "Name :${name.text}\n"
                              "Tanggal Lahir :${tanggalLahir.text}\n"
                              "Pendidikan :${valAgama.toString()}\n"
                              "Status :${valJk.toString()}";

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(inputForm.toString())),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Silahkan Pilih Pendidikan Dan Status",
                              ),
                            ),
                          );
                        }
                      }
                    });
                  },
                  bgColor: Colors.teal,
                  labelColor: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CostumInput extends StatelessWidget {
  final String labelInput;
  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;
  final VoidCallback? onTap;

  const CostumInput({
    super.key,
    required this.labelInput,
    required this.controller,
    required this.hintText,
    required this.textInputType,
    this.obscureText = false,
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
          controller: controller, //mendapatkan input yang sudah diisi
          validator: (val) {
            return val!.isEmpty ? "input tidak boleh kosong" : null;
          },
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
          keyboardType: textInputType,
          obscureText: obscureText,
          onTap: () {
            onTap?.call();
          },
        ),
      ],
    );
  }
}

class CostumRadio extends StatelessWidget {
  final String value;
  final String groupValue;
  final ValueChanged<String> onChange;

  const CostumRadio({
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
          if (val != null) {
            onChange.call(val);
          }
        },
        title: Text(value),
      ),
    );
  }
}

class CostumButton extends StatelessWidget {
  final Color bgColor;
  final String labelButton;
  final VoidCallback onPressed;
  final Color labelColor;

  const CostumButton({
    super.key,
    required this.labelButton,
    required this.onPressed,
    required this.bgColor,
    required this.labelColor,
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
      child: Text(labelButton, style: TextStyle(color: labelColor)),
    );
  }
}
