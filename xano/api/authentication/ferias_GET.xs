// Query all ferias records
query ferias verb=GET {
  api_group = "Authentication"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $ferias
  }

  response = $ferias
  guid = "LAWtSULoMFUD1qL-YEh989pF3ns"
}