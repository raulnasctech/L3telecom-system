// Editar processo de admissão ou demissão
query "admissao_demissao/{id}" verb=PATCH {
  api_group = "rh"
  auth = "user"

  input {
    int id
    enum tipo? {
      values = ["admissao", "demissao"]
    }
  
    timestamp data_abertura?
    enum status? {
      values = ["pendente", "em_andamento", "concluido"]
    }
  }

  stack {
    db.patch "" {
      field_name = "id"
      field_value = $input.id
      data = {
        tipo         : $input.tipo
        data_abertura: $input.data_abertura
        status       : $input.status
      }
    } as $result
  }

  response = $result
  guid = "Rf7DanHQiWpD96tVgp7S3eE5myU"
}