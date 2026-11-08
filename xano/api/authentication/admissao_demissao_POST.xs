// Add admissao_demissao record
query admissao_demissao verb=POST {
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
    } as $admissao_demissao
  }

  response = $admissao_demissao
  guid = "V75ap-JOjXowdymdToTZBiKC5yQ"
}