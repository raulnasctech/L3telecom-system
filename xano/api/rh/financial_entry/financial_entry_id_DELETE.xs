// Delete financial_entry record.
query "financial_entry/{financial_entry_id}" verb=DELETE {
  api_group = "rh"

  input {
    int financial_entry_id? filters=min:1
  }

  stack {
    db.del financial_entry {
      field_name = "id"
      field_value = $input.financial_entry_id
    }
  }

  response = null
  guid = "B-_whdFymwHazSDeJiC-Ed8W4R0"
}