// Add documento_funcionário record
query documento_funcion_rio verb=POST {
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
    } as $documento_funcion_rio
  }

  response = $documento_funcion_rio
  guid = "NIlg6yImQ7cRJN1UH_-QPzjF1Ec"
}