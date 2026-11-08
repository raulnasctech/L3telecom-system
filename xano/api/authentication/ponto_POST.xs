// Add ponto record
query ponto verb=POST {
  api_group = "Authentication"

  input {
    dblink {
      table = ""
    }
  }

  stack {
    db.add "" {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $ponto
  }

  response = $ponto
  guid = "wWkenE8LoRZwM9kn6cHGFAlnqQM"
}