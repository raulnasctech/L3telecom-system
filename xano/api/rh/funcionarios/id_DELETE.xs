// Excluir funcionário
query "funcionarios/{id}" verb=DELETE {
  api_group = "rh"
  auth = "user"

  input {
    int id
  }

  stack {
    db.get user {
      field_name = "id"
      field_value = $auth.id
    } as $usuario_logado
  
    // Only Admin can delete
    precondition ($usuario_logado.papel == "admin") {
      error_type = "accessdenied"
      error = "Apenas Admin pode excluir funcionários"
    }
  
    db.del funcionarios {
      field_name = "id"
      field_value = $input.id
    }
  }

  response = true
  guid = "B1gkaEc3ntquT3RDjt1TSFr-9dA"
}