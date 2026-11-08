// Get documento_funcionário record
query "documento_funcion_rio/{documento_funcion_rio_id}" verb=GET {
  api_group = "Authentication"

  input {
    int documento_funcion_rio_id? filters=min:1
  }

  stack {
    db.get "" {
      field_name = "id"
      field_value = $input.documento_funcion_rio_id
    } as $documento_funcion_rio
  
    precondition ($documento_funcion_rio != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $documento_funcion_rio
  guid = "A4dXAKeFVXq1JNrAjaZoDDWg_5I"
}