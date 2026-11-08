// Query all vacation_request records
query vacation_request verb=GET {
  api_group = "rh"

  input {
  }

  stack {
    db.query vacation_request {
      return = {type: "list"}
    } as $vacation_request
  }

  response = $vacation_request
  guid = "2kUAIgI44TqAAbP08RHUya0OtgE"
}