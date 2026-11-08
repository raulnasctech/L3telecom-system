// Query all RH records
query rh verb=GET {
  api_group = "rh"

  input {
  }

  stack {
    db.query RH {
      return = {type: "list"}
    } as $rh
  }

  response = $rh
  guid = "SDOUqayWW2DoUE7Iab3c5gHClDw"
}