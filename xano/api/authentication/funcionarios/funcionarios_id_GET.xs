// Get funcionarios record
query "funcionarios/{funcionarios_id}" verb=GET {
  api_group = "Authentication"

  input {
    int funcionarios_id? filters=min:1
  }

  stack {
    db.get funcionarios {
      field_name = "id"
      field_value = $input.funcionarios_id
    } as $funcionarios
  
    precondition ($funcionarios != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $funcionarios
  guid = "4riTKDQVKzDtsKHwFDfvzCYESdo"
}