// Add RH record
query rh verb=POST {
  api_group = "rh"

  input {
    dblink {
      table = "RH"
    }
  }

  stack {
    db.add RH {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $rh
  }

  response = $rh
  guid = "lTdHzfJj_GiyUdiI60OG3h3PIjE"
}