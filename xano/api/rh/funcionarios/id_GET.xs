// Obter funcionário por ID
query "funcionarios/{id}" verb=GET {
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
  
    db.get funcionarios {
      field_name = "id"
      field_value = $input.id
    } as $result
  
    // RBAC: If gestor, check department
    conditional {
      if ($result != null && $usuario_logado.papel == "gestor") {
        precondition ($result.departamento == $usuario_logado.departamento) {
          error_type = "accessdenied"
          error = "Você não tem permissão para acessar funcionários de outro departamento"
        }
      }
    }
  }

  response = $result
  guid = "zRdBt_hxl27x_V3W1nPgZ3wv30Y"
}