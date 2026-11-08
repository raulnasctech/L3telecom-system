// Gerar folha de pagamento com cálculo automático de salário líquido
query folha_pagamento verb=POST {
  api_group = "rh"
  auth = "user"

  input {
    int funcionario_id
    text competencia
    decimal salario_bruto
    decimal descontos_inss
    decimal descontos_irrf
    decimal outros_descontos?
    attachment? holerite_arquivo?
  }

  stack {
    var $liquido {
      value = $input.salario_bruto - $input.descontos_inss - $input.descontos_irrf - $input.outros_descontos
    }
  
    db.add "" {
      data = {
        funcionario_id  : $input.funcionario_id
        competencia     : $input.competencia
        salario_bruto   : $input.salario_bruto
        descontos_inss  : $input.descontos_inss
        descontos_irrf  : $input.descontos_irrf
        outros_descontos: $input.outros_descontos
        salario_liquido : $liquido
        holerite_arquivo: $input.holerite_arquivo
        status          : "gerado"
        created_at      : now
      }
    } as $result
  }

  response = $result
  guid = "vJJM7m9RTLv-ZgZm4oXEhq8QNyA"
}