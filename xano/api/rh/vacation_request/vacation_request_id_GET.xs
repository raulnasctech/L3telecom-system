// Get vacation_request record
query "vacation_request/{vacation_request_id}" verb=GET {
  api_group = "rh"

  input {
    int vacation_request_id? filters=min:1
  }

  stack {
    db.get vacation_request {
      field_name = "id"
      field_value = $input.vacation_request_id
    } as $vacation_request
  
    precondition ($vacation_request != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $vacation_request
  guid = "DUbfj3UtmlE_LQ9xoNgtEHt616g"
}