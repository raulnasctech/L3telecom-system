// Excluir documento
query "documento_funcionario/{id}" verb=DELETE {
  api_group = "rh"
  auth = "user"

  input {
    int id
  }

  stack {
    db.del "" {
      field_name = "id"
      field_value = $input.id
    }
  }

  response = true
  guid = "HAD8N2Q6jO7NYOuX-hNUJhcjHKs"
}