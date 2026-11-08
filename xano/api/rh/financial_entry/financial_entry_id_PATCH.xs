// Edit financial_entry record
query "financial_entry/{financial_entry_id}" verb=PATCH {
  api_group = "rh"

  input {
    int financial_entry_id? filters=min:1
    dblink {
      table = "financial_entry"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch financial_entry {
      field_name = "id"
      field_value = $input.financial_entry_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $financial_entry
  }

  response = $financial_entry
  guid = "OhBEpJ34mTv9KldxBgfGxbxJlLc"
}