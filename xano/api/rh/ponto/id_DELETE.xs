// Excluir registro de ponto
query "ponto/{id}" verb=DELETE {
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
  guid = "l_qoMdOMWcPzIwRrs9TvqEksmLU"
}