import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class UtilsServices {
  // R$ Valor
  String priceToCurrency(double price) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');

    return numberFormat.format(price);
  }

  // Formatar data e hora
  String formatDateTime(DateTime dateTime) {
    initializeDateFormatting();

    DateFormat dateFormat = DateFormat.yMd('pt_BR').add_Hm();

    return dateFormat.format(dateTime);
  }

  void showToast({
    required FToast fToast,
    required String message,
    bool isError = false,
    // ignore: avoid_init_to_null
    IconData? icon = null,
  }) {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: isError ? Colors.red : Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: isError ? true : (icon == null ? false : true),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 3, 5, 0),
                  child: Icon(isError ? Icons.error : icon),
                ),
                const SizedBox(
                  width: 12.0,
                ),
              ],
            ),
          ),
          Text(
            message,
            style: TextStyle(
              color: isError ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      toastDuration: const Duration(seconds: 2),
      gravity: ToastGravity.BOTTOM,
    );
  }
}
