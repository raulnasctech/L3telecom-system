// Add vacation_request record
query vacation_request verb=POST {
  api_group = "rh"

  input {
    dblink {
      table = "vacation_request"
    }
  }

  stack {
    db.add vacation_request {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $vacation_request
  }

  response = $vacation_request
  guid = "kNR6lLmh_G2RTUXAze9R-aOqz5c"
}