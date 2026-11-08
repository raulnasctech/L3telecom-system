// Obter documento por ID
query "documento_funcionario/{id}" verb=GET {
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
  
    db.get "" {
      field_name = "id"
      field_value = $input.id
    } as $result
  
    conditional {
      if ($result != null && $usuario_logado.papel == "gestor") {
        db.get funcionarios {
          field_name = "id"
          field_value = $result.funcionario_id
        } as $f
      
        precondition ($f != null && $f.departamento == $usuario_logado.departamento) {
          error_type = "accessdenied"
          error = "Você não tem permissão para acessar documentos de funcionários de outro departamento"
        }
      }
    }
  }

  response = $result
  guid = "rhEUCVaIPLb9xq5PGXeLj00rnA0"
}