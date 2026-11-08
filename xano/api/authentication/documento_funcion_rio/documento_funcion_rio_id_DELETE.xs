// Delete documento_funcionário record.
query "documento_funcion_rio/{documento_funcion_rio_id}" verb=DELETE {
  api_group = "Authentication"

  input {
    int documento_funcion_rio_id? filters=min:1
  }

  stack {
    db.del "" {
      field_name = "id"
      field_value = $input.documento_funcion_rio_id
    }
  }

  response = null
  guid = "is_BuWt0G4bMfF6FKQAkBJ46aOE"
}