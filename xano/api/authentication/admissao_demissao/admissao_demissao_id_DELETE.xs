// Delete admissao_demissao record.
query "admissao_demissao/{admissao_demissao_id}" verb=DELETE {
  api_group = "Authentication"

  input {
    int admissao_demissao_id? filters=min:1
  }

  stack {
    db.del "" {
      field_name = "id"
      field_value = $input.admissao_demissao_id
    }
  }

  response = null
  guid = "8BF7kS67XfuK_XtMA6nxiIYzFn8"
}