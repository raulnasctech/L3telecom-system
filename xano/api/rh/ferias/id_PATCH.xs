// Editar férias
query "ferias/{id}" verb=PATCH {
  api_group = "rh"
  auth = "user"

  input {
    int id
    date data_inicio?
    date data_fim?
    int dias_solicitados?
    enum status? {
      values = ["solicitado", "aprovado", "em_gozo", "concluido", "rejeitado"]
    }
  
    int aprovado_por?
  }

  stack {
    db.patch "" {
      field_name = "id"
      field_value = $input.id
      data = {
        data_inicio     : $input.data_inicio
        data_fim        : $input.data_fim
        dias_solicitados: $input.dias_solicitados
        status          : $input.status
        aprovado_por    : $input.aprovado_por
      }
    } as $result
  }

  response = $result
  guid = "zr9QXn7VoyUncNqLQBEpn3kOUVk"
}