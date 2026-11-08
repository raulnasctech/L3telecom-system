// Excluir férias
query "ferias/{id}" verb=DELETE {
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
  guid = "NrMw1nhVGtU-ux19H76R0pn-9j0"
}