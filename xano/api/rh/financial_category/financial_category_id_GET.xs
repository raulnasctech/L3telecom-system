// Get financial_category record
query "financial_category/{financial_category_id}" verb=GET {
  api_group = "rh"

  input {
    int financial_category_id? filters=min:1
  }

  stack {
    db.get financial_category {
      field_name = "id"
      field_value = $input.financial_category_id
    } as $financial_category
  
    precondition ($financial_category != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $financial_category
  guid = "zesx92dPIBnPrNAVwi6yYF73wn0"
}