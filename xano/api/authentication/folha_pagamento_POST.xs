// Add folha_pagamento record
query folha_pagamento verb=POST {
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
    } as $folha_pagamento
  }

  response = $folha_pagamento
  guid = "-adBPYEC0dB41TF7q0mk-qRE3jI"
}