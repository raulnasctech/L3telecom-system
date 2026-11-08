// Excluir processo de admissão ou demissão
query "admissao_demissao/{id}" verb=DELETE {
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
  guid = "93QxUHmtp1WQXLFSTwHl3NCGyEQ"
}