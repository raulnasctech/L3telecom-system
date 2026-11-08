// Delete ponto record.
query "ponto/{ponto_id}" verb=DELETE {
  api_group = "Authentication"

  input {
    int ponto_id? filters=min:1
  }

  stack {
    db.del "" {
      field_name = "id"
      field_value = $input.ponto_id
    }
  }

  response = null
  guid = "PFG-cbZu3ErT6-do9k2AS2YsqI8"
}