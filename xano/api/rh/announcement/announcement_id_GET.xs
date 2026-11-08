// Get announcement record
query "announcement/{announcement_id}" verb=GET {
  api_group = "rh"

  input {
    int announcement_id? filters=min:1
  }

  stack {
    db.get announcement {
      field_name = "id"
      field_value = $input.announcement_id
    } as $announcement
  
    precondition ($announcement != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $announcement
  guid = "bKUQlbsf6u9GlpV2JpIG1iErdzg"
}