// Edit financial_attachment record
query "financial_attachment/{financial_attachment_id}" verb=PATCH {
  api_group = "rh"

  input {
    int financial_attachment_id? filters=min:1
    dblink {
      table = "financial_attachment"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch financial_attachment {
      field_name = "id"
      field_value = $input.financial_attachment_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $financial_attachment
  }

  response = $financial_attachment
  guid = "krP4pR0nryCRAonzfpQVpFiEW-A"
}