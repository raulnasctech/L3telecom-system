// Query all announcement records
query announcement verb=GET {
  api_group = "rh"

  input {
  }

  stack {
    db.query announcement {
      return = {type: "list"}
    } as $announcement
  }

  response = $announcement
  guid = "6F--g8dcl2vkmAssD0egZMGndV8"
}