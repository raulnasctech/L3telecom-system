// Excluir item de checklist
query "checklist_itens/{id}" verb=DELETE {
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
  guid = "nBW_JjlZEQD3z7Pzjck7cGV-mBI"
}