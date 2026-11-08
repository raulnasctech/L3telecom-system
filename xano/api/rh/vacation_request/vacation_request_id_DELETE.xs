// Delete vacation_request record.
query "vacation_request/{vacation_request_id}" verb=DELETE {
  api_group = "rh"

  input {
    int vacation_request_id? filters=min:1
  }

  stack {
    db.del vacation_request {
      field_name = "id"
      field_value = $input.vacation_request_id
    }
  }

  response = null
  guid = "v3ucQuv8SGN9qX0gi09kUqneGvk"
}