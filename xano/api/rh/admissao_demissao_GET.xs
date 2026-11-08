// Listar processos de admissão/demissão com filtro por departamento para gestores
query admissao_demissao verb=GET {
  api_group = "rh"
  auth = "user"

  input {
  }

  stack {
    db.get user {
      field_name = "id"
      field_value = $auth.id
    } as $usuario_logado
  
    conditional {
      if ($usuario_logado.papel == "gestor") {
        db.query "" {
          join = {
            funcionario: {
              table: "funcionarios"
              where: $db.admissao_demissao.funcionario_id == $db.funcionarios.id
            }
          }
        
          where = $db.funcionarios.departamento == $usuario_logado.departamento
          return = {type: "list"}
        } as $result
      }
    
      else {
        db.query "" {
          where = $db.admissao_demissao.id > 0
          return = {type: "list"}
        } as $result
      }
    }
  }

  response = $result
  guid = "IZSJNrW5MJgToLAH55JSbDhZZwI"
}