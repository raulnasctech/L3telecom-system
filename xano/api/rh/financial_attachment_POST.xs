// Add financial_attachment record
query financial_attachment verb=POST {
  api_group = "rh"

  input {
    dblink {
      table = "financial_attachment"
    }
  }

  stack {
    db.add financial_attachment {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $financial_attachment
  }

  response = $financial_attachment
  guid = "bJmcA8ifFniRvbVBJhKClP9DOLo"
}