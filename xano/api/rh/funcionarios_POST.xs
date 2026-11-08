// Criar novo funcionário
query funcionarios verb=POST {
  api_group = "rh"
  auth = "user"

  input {
    text nome
    text cpf
    date data_nascimento
    text cargo
    text departamento
    date data_admissao
    enum status?=ativo {
      values = ["ativo", "inativo"]
    }
  
    decimal salario_base
    int saldo_ferias_dias?=30
    text contato
    text endereco
  }

  stack {
    db.get user {
      field_name = "id"
      field_value = $auth.id
    } as $usuario_logado
  
    // Only RH or Admin can create
    precondition ($usuario_logado.papel == "rh" || $usuario_logado.papel == "admin") {
      error_type = "accessdenied"
      error = "Apenas RH ou Admin podem cadastrar funcionários"
    }
  
    db.add funcionarios {
      data = {
        nome             : $input.nome
        cpf              : $input.cpf
        data_nascimento  : $input.data_nascimento
        cargo            : $input.cargo
        departamento     : $input.departamento
        data_admissao    : $input.data_admissao
        status           : $input.status
        salario_base     : $input.salario_base
        saldo_ferias_dias: $input.saldo_ferias_dias
        contato          : $input.contato
        endereco         : $input.endereco
        created_at       : now
      }
    } as $result
  }

  response = $result
  guid = "ws_lcDNmx9VlCoxc-7Lqti5PnB8"
}