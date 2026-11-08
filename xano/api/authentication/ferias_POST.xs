// Add ferias record
query ferias verb=POST {
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
    } as $ferias
  }

  response = $ferias
  guid = "C3_CbdHDfCATxAyLO_HK3P1AswE"
}