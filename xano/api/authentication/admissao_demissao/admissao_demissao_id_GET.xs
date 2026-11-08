// Get admissao_demissao record
query "admissao_demissao/{admissao_demissao_id}" verb=GET {
  api_group = "Authentication"

  input {
    int admissao_demissao_id? filters=min:1
  }

  stack {
    db.get "" {
      field_name = "id"
      field_value = $input.admissao_demissao_id
    } as $admissao_demissao
  
    precondition ($admissao_demissao != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $admissao_demissao
  guid = "2FdExk4mWKlv8-EFdUqjJ1xrP0Q"
}