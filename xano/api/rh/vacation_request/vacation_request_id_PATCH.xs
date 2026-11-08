// Edit vacation_request record
query "vacation_request/{vacation_request_id}" verb=PATCH {
  api_group = "rh"

  input {
    int vacation_request_id? filters=min:1
    dblink {
      table = "vacation_request"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch vacation_request {
      field_name = "id"
      field_value = $input.vacation_request_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $vacation_request
  }

  response = $vacation_request
  guid = "po7jRQZl5E4oKuVSs9yg9cCf5XU"
}