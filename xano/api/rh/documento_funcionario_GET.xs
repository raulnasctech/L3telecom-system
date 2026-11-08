// Listar documentos com filtro por departamento para gestores
query documento_funcionario verb=GET {
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
              where: `$db."documento_funcionário".funcionario_id == $db.funcionarios.id` == true
            }
          }
        
          where = $db.funcionarios.departamento == $usuario_logado.departamento
          return = {type: "list"}
        } as $result
      }
    
      else {
        db.query "" {
          where = `$db."documento_funcionário".id > 0` == true
          return = {type: "list"}
        } as $result
      }
    }
  }

  response = $result
  guid = "bwHhAUAmLXqUafdJ_J1mwpyk9_c"
}