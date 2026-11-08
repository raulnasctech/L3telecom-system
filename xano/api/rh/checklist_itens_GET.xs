// Listar itens de checklist com filtro por departamento para gestores
query checklist_itens verb=GET {
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
            processo   : {
              table: ""
              where: $db.checklist_itens.processo_id == $db.admissao_demissao.id
            }
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
          where = $db.checklist_itens.id > 0
          return = {type: "list"}
        } as $result
      }
    }
  }

  response = $result
  guid = "9gYlG_epWouO3CLmqlK6H9fNNak"
}