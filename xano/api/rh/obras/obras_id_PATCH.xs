// Edit Obras record
query "obras/{obras_id}" verb=PATCH {
  api_group = "rh"

  input {
    int obras_id? filters=min:1
    dblink {
      table = "Obras"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch Obras {
      field_name = "id"
      field_value = $input.obras_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $obras
  }

  response = $obras
  guid = "rgLK6bOyqmpPuKx8vXmvwd3dTmA"
}