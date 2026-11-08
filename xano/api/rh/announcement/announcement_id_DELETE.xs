// Delete announcement record.
query "announcement/{announcement_id}" verb=DELETE {
  api_group = "rh"

  input {
    int announcement_id? filters=min:1
  }

  stack {
    db.del announcement {
      field_name = "id"
      field_value = $input.announcement_id
    }
  }

  response = null
  guid = "jPkzIvbtaZ9lgpEidmlDoZKazqo"
}