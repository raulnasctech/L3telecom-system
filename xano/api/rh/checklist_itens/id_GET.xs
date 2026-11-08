// Obter item de checklist por ID
query "checklist_itens/{id}" verb=GET {
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
        db.get "" {
          field_name = "id"
          field_value = $result.processo_id
        } as $p
      
        db.get funcionarios {
          field_name = "id"
          field_value = $p.funcionario_id
        } as $f
      
        precondition ($f != null && $f.departamento == $usuario_logado.departamento) {
          error_type = "accessdenied"
          error = "Você não tem permissão para acessar itens de checklist de funcionários de outro departamento"
        }
      }
    }
  }

  response = $result
  guid = "UdcnhyyK1o2p_7utR8SAvsOz_x0"
}