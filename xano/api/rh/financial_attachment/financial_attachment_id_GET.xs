// Get financial_attachment record
query "financial_attachment/{financial_attachment_id}" verb=GET {
  api_group = "rh"

  input {
    int financial_attachment_id? filters=min:1
  }

  stack {
    db.get financial_attachment {
      field_name = "id"
      field_value = $input.financial_attachment_id
    } as $financial_attachment
  
    precondition ($financial_attachment != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $financial_attachment
  guid = "M0Ub-pCPb5D25wghIDXi8x6j-Zs"
}