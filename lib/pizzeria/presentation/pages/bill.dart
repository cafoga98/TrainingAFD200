import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:grilles/pizzeria/models/bill_pay.dart';

List<String> genderOptions = [
  'Elija una opcion',
  'Femenino',
  'Masculino',
  'Otro'
];

class Bill extends StatefulWidget {
  const Bill({Key? key}) : super(key: key);

  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {

  double? valueSlider = 5;
  BillPay _billPay = BillPay();

  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final total = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: FormBuilder(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              //region formulario
              normalFieldText(
                labelText: 'Nombre completo',
                context: context,
                keyboardType: TextInputType.name,
                icon: const Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                onSaved: (value) {
                  _billPay.name = value;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              normalFieldText(
                labelText: 'Ciudad',
                context: context,
                icon: const Icon(
                  Icons.account_balance_sharp,
                  color: Colors.white,
                ),
                onSaved: (value) {
                  _billPay.city = value;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              normalFieldText(
                labelText: 'Dirección',
                context: context,
                keyboardType: TextInputType.streetAddress,
                icon: const Icon(
                  Icons.add_location_rounded,
                  color: Colors.white,
                ),
                onSaved: (value) {
                  _billPay.address = value;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              FormBuilderDateTimePicker(
                name: 'date',
                initialEntryMode: DatePickerEntryMode.calendar,
                initialValue: DateTime.now(),
                inputType: InputType.date,
                cursorColor: Colors.white,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  prefixIcon: const Icon(
                    Icons.date_range,
                    color: Colors.white,
                  ),
                  labelText: 'Fecha de nacimiento',
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      _formKey.currentState!.fields['date']?.didChange(null);
                    },
                  ),
                ),
                initialTime: const TimeOfDay(hour: 8, minute: 0),
                onSaved: (value) {
                  _billPay.dateBorn = value.toString();
                },
              ),
              FormBuilderDropdown<String>(
                name: 'Genero',
                initialValue: genderOptions.first,
                decoration: InputDecoration(
                  labelText: 'Genero',
                  prefixIcon: const Icon(
                    Icons.wc_outlined,
                    color: Colors.white,
                  ),
                  hintText: 'Select Gender',
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo requerido';
                  }
                  return null;
                },
                onSaved: (value) {
                  _billPay.gender = value;
                },
                dropdownColor: Colors.blue,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.white),
                items: genderOptions
                    .map(
                      (gender) => DropdownMenuItem(
                    alignment: AlignmentDirectional.center,
                    value: gender,
                    child: Text(gender),
                  ),
                )
                    .toList(),
                valueTransformer: (val) => val?.toString(),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Regalanos una calificación de 0 a 10 para hacernos saber como lo estamos haciendo, con movito de mejorar para nuestros clientes',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.white),
              ),
              FormBuilderSlider(
                name: 'calificacion',
                onChanged: (val) {
                  setState(() {
                    valueSlider = val;
                  });
                },
                onSaved: (value) {
                  _billPay.qualification = value;
                },
                min: 0.0,
                max: 10.0,
                initialValue: 5.0,
                divisions: 20,
                activeColor: Colors.blue,
                inactiveColor: Colors.blueGrey,
                decoration: InputDecoration(
                  labelText: 'Tu calificación ${valueSlider.toString()}',
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white),
                ),
              ),
              Text(
                'Tu pago total es de \$$total',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.saveAndValidate() ?? false) {
                      showBillDialog(context, _billPay);
                    }
                  },
                  child: const Text('Terminar'),
                ),
              )
              //endregion
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  normalFieldText(
      {required String labelText,
      required BuildContext context,
      required Icon icon,
      required FormFieldSetter<String>? onSaved,
      TextInputType? keyboardType}) => TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Campo requerido';
      }
      return null;
    },
    onSaved: onSaved,
    style:
    Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white),
    keyboardType: keyboardType ?? TextInputType.text,
    cursorColor: Colors.white,
    decoration: InputDecoration(
      prefixIcon: icon,
      contentPadding: const EdgeInsets.all(8.0),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          width: 1,
          color: Colors.white,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      labelText: labelText,
      errorStyle: Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(color: Colors.white),
      labelStyle: Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(color: Colors.white),
    ),
  );


  header() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tu Factura',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white),
          ),
          const Divider(
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Datos personales',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Para tu factura electronica por favor completar los siguientes datos personales, podras consultar tu factura de 2 a 5 dias habiles',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      );

  Future<void> showBillDialog(BuildContext context, BillPay billPay) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Factura'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Nombre: ${billPay.name ?? ""}'),
                Text('Ciudad: ${billPay.city ?? ""}'),
                Text('Dirección: ${billPay.address ?? ""}'),
                Text('Fecha de nacimiento: ${billPay.dateBorn ?? ""}'),
                Text('Género: ${billPay.gender ?? ""}'),
                Text('Calificación: ${billPay.qualification ?? ""}'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cerrar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
