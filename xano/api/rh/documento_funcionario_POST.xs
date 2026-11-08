// Fazer upload de documento
query documento_funcionario verb=POST {
  api_group = "rh"
  auth = "user"

  input {
    int funcionario_id
    enum tipo {
      values = ["rg", "cpf", "ctps", "comprovante_residencia", "contrato", "outro"]
    }
  
    attachment? arquivo
  }

  stack {
    db.add "" {
      data = {
        funcionario_id: $input.funcionario_id
        tipo          : $input.tipo
        arquivo       : $input.arquivo
        data_upload   : now
        created_at    : now
      }
    } as $result
  }

  response = $result
  guid = "0OUdFLjmFfKmtAbnROdGNdkw9vE"
}