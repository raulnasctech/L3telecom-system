// Add funcionarios record
query funcionarios verb=POST {
  api_group = "Authentication"

  input {
    dblink {
      table = "funcionarios"
    }
  }

  stack {
    db.add funcionarios {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $funcionarios
  }

  response = $funcionarios
  guid = "WWxz4dB-quDS36uCUn6ZT-0pd60"
}