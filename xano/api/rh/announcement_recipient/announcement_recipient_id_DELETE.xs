// Delete announcement_recipient record.
query "announcement_recipient/{announcement_recipient_id}" verb=DELETE {
  api_group = "rh"

  input {
    int announcement_recipient_id? filters=min:1
  }

  stack {
    db.del announcement_recipient {
      field_name = "id"
      field_value = $input.announcement_recipient_id
    }
  }

  response = null
  guid = "yqkNi3UvSZ4Q_v0lo5lVSh_rf7M"
}