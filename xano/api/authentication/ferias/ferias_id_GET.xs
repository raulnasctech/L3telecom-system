// Get ferias record
query "ferias/{ferias_id}" verb=GET {
  api_group = "Authentication"

  input {
    int ferias_id? filters=min:1
  }

  stack {
    db.get "" {
      field_name = "id"
      field_value = $input.ferias_id
    } as $ferias
  
    precondition ($ferias != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $ferias
  guid = "dM1maP1Ynjd03qVz9UgMbL6l0fw"
}