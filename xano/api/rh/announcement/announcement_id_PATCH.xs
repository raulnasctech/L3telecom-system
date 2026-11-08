// Edit announcement record
query "announcement/{announcement_id}" verb=PATCH {
  api_group = "rh"

  input {
    int announcement_id? filters=min:1
    dblink {
      table = "announcement"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch announcement {
      field_name = "id"
      field_value = $input.announcement_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $announcement
  }

  response = $announcement
  guid = "x16clQiQo3V9wa9S5rK2QC5xPKE"
}