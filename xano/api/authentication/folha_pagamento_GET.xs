// Query all folha_pagamento records
query folha_pagamento verb=GET {
  api_group = "Authentication"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $folha_pagamento
  }

  response = $folha_pagamento
  guid = "kifaTMM-vK_7cF1Ai1yMdYlGY6c"
}