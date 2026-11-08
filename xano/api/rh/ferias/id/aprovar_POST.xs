// Aprovar férias e descontar do saldo do funcionário
query "ferias/{id}/aprovar" verb=POST {
  api_group = "rh"
  auth = "user"

  input {
    int id
  }

  stack {
    db.get "" {
      field_name = "id"
      field_value = $input.id
    } as $ferias
  
    precondition ($ferias != null) {
      error_type = "notfound"
      error = "Férias não encontradas"
    }
  
    db.get funcionarios {
      field_name = "id"
      field_value = $ferias.funcionario_id
    } as $funcionario
  
    precondition ($funcionario != null) {
      error_type = "notfound"
      error = "Funcionário não encontrado"
    }
  
    conditional {
      if ($ferias.dias_solicitados <= $funcionario.saldo_ferias_dias) {
        // Atualiza férias
        db.edit "" {
          field_name = "id"
          field_value = $ferias.id
          data = {status: "aprovado", aprovado_por: $auth.id}
        }
      
        // Atualiza saldo funcionário
        db.edit funcionarios {
          field_name = "id"
          field_value = $funcionario.id
          data = {
            saldo_ferias_dias: $funcionario.saldo_ferias_dias - $ferias.dias_solicitados
          }
        }
      }
    
      else {
        throw {
          name = "inputerror"
          value = "Saldo insuficiente. Saldo disponível: " ~ ($funcionario.saldo_ferias_dias|to_text) ~ " dias."
        }
      }
    }
  }

  response = {
    success: true
    message: "Férias aprovadas com sucesso"
  }

  guid = "WinYfRkc6b5_qfVtUKB-FuUqjIc"
}