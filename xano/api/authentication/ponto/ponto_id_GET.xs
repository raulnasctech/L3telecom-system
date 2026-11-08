// Get ponto record
query "ponto/{ponto_id}" verb=GET {
  api_group = "Authentication"

  input {
    int ponto_id? filters=min:1
  }

  stack {
    db.get "" {
      field_name = "id"
      field_value = $input.ponto_id
    } as $ponto
  
    precondition ($ponto != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $ponto
  guid = "YydZR423Ab7L8q6xrAtnfmUbSrM"
}