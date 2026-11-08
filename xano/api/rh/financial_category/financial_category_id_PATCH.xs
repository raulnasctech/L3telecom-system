// Edit financial_category record
query "financial_category/{financial_category_id}" verb=PATCH {
  api_group = "rh"

  input {
    int financial_category_id? filters=min:1
    dblink {
      table = "financial_category"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch financial_category {
      field_name = "id"
      field_value = $input.financial_category_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $financial_category
  }

  response = $financial_category
  guid = "Fn_-9YcwDU-3eT0TxXQXQ6GmDAc"
}