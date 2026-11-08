// Registrar ponto
query ponto verb=POST {
  api_group = "rh"
  auth = "user"

  input {
    int funcionario_id
    date data
    enum tipo {
      values = ["presenca", "falta", "atestado", "falta_justificada"]
    }
  
    text? observacao?
  }

  stack {
    db.add "" {
      data = {
        funcionario_id: $input.funcionario_id
        data          : $input.data
        tipo          : $input.tipo
        observacao    : $input.observacao
        created_at    : now
      }
    } as $result
  }

  response = $result
  guid = "_2K3y3yOQ2g3BDQn1JMmA9tE0oU"
}