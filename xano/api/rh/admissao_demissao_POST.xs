// Abrir processo de admissão ou demissão
query admissao_demissao verb=POST {
  api_group = "rh"
  auth = "user"

  input {
    int funcionario_id
    enum tipo {
      values = ["admissao", "demissao"]
    }
  
    timestamp data_abertura?=now
  }

  stack {
    db.add "" {
      data = {
        funcionario_id: $input.funcionario_id
        tipo          : $input.tipo
        data_abertura : $input.data_abertura
        status        : "pendente"
        created_at    : now
      }
    } as $result
  }

  response = $result
  guid = "EU4Z0ID9zreF-uUB2Hy6Dn7-Mhs"
}