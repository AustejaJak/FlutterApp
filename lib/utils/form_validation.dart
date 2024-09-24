String? formValidation(String? value, String errorMsg) {
  if (value == null || value.isEmpty) {
    return errorMsg;
  }
  return null;
}
