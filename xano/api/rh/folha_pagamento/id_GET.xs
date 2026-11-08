// Obter folha de pagamento por ID
query "folha_pagamento/{id}" verb=GET {
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
          error = "Você não tem permissão para acessar folhas de pagamento de funcionários de outro departamento"
        }
      }
    }
  }

  response = $result
  guid = "tqOywVhSZROtBdLSwPLIONrNdpw"
}