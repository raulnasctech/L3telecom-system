// Query all documento_funcionário records
query documento_funcion_rio verb=GET {
  api_group = "Authentication"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $documento_funcion_rio
  }

  response = $documento_funcion_rio
  guid = "VG_8qvEe7hjlcfdUmOhXyMKAHYI"
}