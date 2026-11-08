// Editar registro de ponto
query "ponto/{id}" verb=PATCH {
  api_group = "rh"
  auth = "user"

  input {
    int id
    date data?
    enum tipo? {
      values = ["presenca", "falta", "atestado", "falta_justificada"]
    }
  
    text? observacao?
  }

  stack {
    db.patch "" {
      field_name = "id"
      field_value = $input.id
      data = {
        data      : $input.data
        tipo      : $input.tipo
        observacao: $input.observacao
      }
    } as $result
  }

  response = $result
  guid = "Egd8bEjdFCZ6WUWqRF8Awljl0MM"
}