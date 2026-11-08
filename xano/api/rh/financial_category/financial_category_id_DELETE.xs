// Delete financial_category record.
query "financial_category/{financial_category_id}" verb=DELETE {
  api_group = "rh"

  input {
    int financial_category_id? filters=min:1
  }

  stack {
    db.del financial_category {
      field_name = "id"
      field_value = $input.financial_category_id
    }
  }

  response = null
  guid = "q2wxt--HWj_sY2014dbOWspEj-0"
}