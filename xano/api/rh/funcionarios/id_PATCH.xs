// Editar funcionário
query "funcionarios/{id}" verb=PATCH {
  api_group = "rh"
  auth = "user"

  input {
    int id
    text nome?
    text cpf?
    date data_nascimento?
    text cargo?
    text departamento?
    date data_admissao?
    enum status? {
      values = ["ativo", "inativo"]
    }
  
    decimal salario_base?
    int saldo_ferias_dias?
    text contato?
    text endereco?
  }

  stack {
    db.get user {
      field_name = "id"
      field_value = $auth.id
    } as $usuario_logado
  
    // Only RH or Admin can edit
    precondition ($usuario_logado.papel == "rh" || $usuario_logado.papel == "admin") {
      error_type = "accessdenied"
      error = "Apenas RH ou Admin podem editar funcionários"
    }
  
    db.patch funcionarios {
      field_name = "id"
      field_value = $input.id
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
      }
    } as $result
  }

  response = $result
  guid = "t_IjpOj1V3vz_5PgumbhDwzrFdE"
}