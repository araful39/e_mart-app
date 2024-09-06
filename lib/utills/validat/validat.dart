class AppValidator{


  static String? validateEmptyText(String? fieldName, String? value){
    if(value ==null || value.isEmpty){
      return "$fieldName is required";
    }
    return null;



  }

  static String? validateEmail(String? value){
    if(value==null || value.isEmpty){
      return "Email is required";
    }
    // final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    // if(emailRegExp.hasMatch(value)){
    // return "Invalid email address";
    //
    // }

    return null;
  }


  static String? validatePassword(String? value){
    if(value==null || value.isEmpty){
      return "Password is required";
    }
    
    if(value.length<6){
      return "Password must be att least 6 characters long";

    }
    
    if(value.contains(RegExp(r'[A-Z]'))){
      return "Password must contains at least one uppercase letter";

    }
    // if(value.contains(RegExp(r'[0-9]'))){
    //   return "Password must contains at least one spacial characters.";
    //
    // }
    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value==null || value.isEmpty){
      return "Phone Number is required";
    }

    final phoneRegExp=RegExp(r'^\d(10)$');


    if(phoneRegExp.hasMatch(value)){
      return "Invalid phone number format (10 digit required)";

    }
    return null;
  }


}