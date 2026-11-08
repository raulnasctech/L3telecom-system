// Edit admissao_demissao record
query "admissao_demissao/{admissao_demissao_id}" verb=PATCH {
  api_group = "Authentication"

  input {
    int admissao_demissao_id? filters=min:1
    dblink {
      table = ""
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch "" {
      field_name = "id"
      field_value = $input.admissao_demissao_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $admissao_demissao
  }

  response = $admissao_demissao
  guid = "djIj-HA1SjCAm-mNYahtpDU5LT4"
}