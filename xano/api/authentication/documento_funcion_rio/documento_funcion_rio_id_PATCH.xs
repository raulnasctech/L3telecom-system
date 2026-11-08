// Edit documento_funcionário record
query "documento_funcion_rio/{documento_funcion_rio_id}" verb=PATCH {
  api_group = "Authentication"

  input {
    int documento_funcion_rio_id? filters=min:1
    dblink {
      table = ""
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch "" {
      field_name = "id"
      field_value = $input.documento_funcion_rio_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $documento_funcion_rio
  }

  response = $documento_funcion_rio
  guid = "qz9PH4P_g7M7ooozKzysJoOzRJ0"
}