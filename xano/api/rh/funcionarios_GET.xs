// Listar funcionários com filtro por departamento para gestores
query funcionarios verb=GET {
  api_group = "rh"
  auth = "user"

  input {
  }

  stack {
    db.get user {
      field_name = "id"
      field_value = $auth.id
    } as $usuario_logado
  
    var $where {
      value = $db.funcionarios.id > 0
    }
  
    conditional {
      if ($usuario_logado.papel == "gestor") {
        var.update $where {
          value = $where && ($db.funcionarios.departamento == $usuario_logado.departamento)
        }
      }
    }
  
    db.query funcionarios {
      where = $where == true
      return = {type: "list"}
    } as $result
  }

  response = $result
  guid = "dj3O1VSBE0w5oQ9HVl77tt9DpSo"
}