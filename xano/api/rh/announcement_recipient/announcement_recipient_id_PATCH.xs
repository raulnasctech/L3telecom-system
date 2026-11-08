// Edit announcement_recipient record
query "announcement_recipient/{announcement_recipient_id}" verb=PATCH {
  api_group = "rh"

  input {
    int announcement_recipient_id? filters=min:1
    dblink {
      table = "announcement_recipient"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch announcement_recipient {
      field_name = "id"
      field_value = $input.announcement_recipient_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $announcement_recipient
  }

  response = $announcement_recipient
  guid = "hZYqXtdxjDyOCzs306Q18X5LCUg"
}