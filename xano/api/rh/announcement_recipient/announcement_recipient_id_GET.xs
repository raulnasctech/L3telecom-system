// Get announcement_recipient record
query "announcement_recipient/{announcement_recipient_id}" verb=GET {
  api_group = "rh"

  input {
    int announcement_recipient_id? filters=min:1
  }

  stack {
    db.get announcement_recipient {
      field_name = "id"
      field_value = $input.announcement_recipient_id
    } as $announcement_recipient
  
    precondition ($announcement_recipient != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $announcement_recipient
  guid = "JIqKnNdYCpxunPSQizJB6B-h34k"
}