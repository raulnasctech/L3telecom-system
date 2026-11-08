// Query all announcement_recipient records
query announcement_recipient verb=GET {
  api_group = "rh"

  input {
  }

  stack {
    db.query announcement_recipient {
      return = {type: "list"}
    } as $announcement_recipient
  }

  response = $announcement_recipient
  guid = "I8J6SLmbGBEA0iDIjbFZf89VDfg"
}