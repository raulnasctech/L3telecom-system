// Get financial_entry record
query "financial_entry/{financial_entry_id}" verb=GET {
  api_group = "rh"

  input {
    int financial_entry_id? filters=min:1
  }

  stack {
    db.get financial_entry {
      field_name = "id"
      field_value = $input.financial_entry_id
    } as $financial_entry
  
    precondition ($financial_entry != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $financial_entry
  guid = "nNfmwBTlPKxQ-CMkUqxzdy26WVU"
}