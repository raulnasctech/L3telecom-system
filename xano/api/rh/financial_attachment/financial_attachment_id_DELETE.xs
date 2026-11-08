// Delete financial_attachment record.
query "financial_attachment/{financial_attachment_id}" verb=DELETE {
  api_group = "rh"

  input {
    int financial_attachment_id? filters=min:1
  }

  stack {
    db.del financial_attachment {
      field_name = "id"
      field_value = $input.financial_attachment_id
    }
  }

  response = null
  guid = "Ksbqf513X-CQq_etImglE17sIS4"
}