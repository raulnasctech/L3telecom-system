// Solicitar férias
query ferias verb=POST {
  api_group = "rh"
  auth = "user"

  input {
    int funcionario_id
    date data_inicio
    date data_fim
    int dias_solicitados
  }

  stack {
    db.add "" {
      data = {
        funcionario_id  : $input.funcionario_id
        data_inicio     : $input.data_inicio
        data_fim        : $input.data_fim
        dias_solicitados: $input.dias_solicitados
        status          : "solicitado"
        created_at      : now
      }
    } as $result
  }

  response = $result
  guid = "DIcxGtLWgVZYGx_l63Hhra3cZDE"
}