import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_services_example/enums/snackbar_type.dart';

import '../../app/app.locator.dart';

void setupSnackbarUi() {
  final service = locator<SnackbarService>();

  // Registers a config to be used when calling showSnackbar
  service.registerSnackbarConfig(
    snackbarConfig: SnackbarConfig(
      backgroundColor: Colors.red,
      textColor: Colors.white,
      mainButtonTextColor: Colors.black,
      duration: Duration(seconds: 3),
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: SnackbarType.blueAndYellow,
    config: SnackbarConfig(
      snackStyle: SnackStyle.GROUNDED,
      backgroundColor: Colors.blueAccent,
      textColor: Colors.yellow,
      borderRadius: 1,
      dismissDirection: DismissDirection.horizontal,
      duration: Duration(seconds: 3),
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: SnackbarType.greenAndRed,
    config: SnackbarConfig(
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.white,
      titleColor: Colors.green,
      messageColor: Colors.red,
      borderRadius: 1,
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: SnackbarType.autoCloseMainButtonTapped,
    config: SnackbarConfig(
      snackPosition: SnackPosition.TOP,
      closeSnackbarOnMainButtonTapped: true,
      borderRadius: 1,
    ),
  );

  service.registerCustomMainButtonBuilder(
    variant: SnackbarType.autoCloseMainButtonTapped,
    builder: (title, onTap) => TextButton(
      child: Text(title ?? 'Undo'),
      onPressed: () => onTap?.call(),
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: TextStyle(
          fontSize: 15,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
  );
}

void setupSnackbarUiLightDark() {
  final service = locator<SnackbarService>();

  // Registers configs to be used when calling showSnackbar
  service.registerSnackbarConfig(
    snackbarConfigLight: SnackbarConfig(
      backgroundColor: Colors.black,
      textColor: Colors.white,
    ),
    snackbarConfigDark: SnackbarConfig(
      backgroundColor: Colors.white,
      textColor: Colors.black,
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: SnackbarType.blueAndYellow,
    config: SnackbarConfig(
      snackStyle: SnackStyle.GROUNDED,
      backgroundColor: Colors.blueAccent,
      textColor: Colors.yellow,
      borderRadius: 1,
      dismissDirection: DismissDirection.horizontal,
      duration: Duration(seconds: 3),
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: SnackbarType.greenAndRed,
    config: SnackbarConfig(
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.white,
      titleColor: Colors.green,
      messageColor: Colors.red,
      borderRadius: 1,
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: SnackbarType.autoCloseMainButtonTapped,
    config: SnackbarConfig(
      snackPosition: SnackPosition.TOP,
      closeSnackbarOnMainButtonTapped: true,
      borderRadius: 1,
    ),
  );

  service.registerCustomMainButtonBuilder(
    variant: SnackbarType.autoCloseMainButtonTapped,
    builder: (title, onTap) => TextButton(
      child: Text(title ?? 'Undo'),
      onPressed: () => onTap?.call(),
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: TextStyle(
          fontSize: 15,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
  );
}
