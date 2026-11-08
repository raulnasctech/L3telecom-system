// Editar folha de pagamento
query "folha_pagamento/{id}" verb=PATCH {
  api_group = "rh"
  auth = "user"

  input {
    int id
    text competencia?
    decimal salario_bruto?
    decimal descontos_inss?
    decimal descontos_irrf?
    decimal outros_descontos?
    decimal salario_liquido?
    attachment? holerite_arquivo?
    enum status? {
      values = ["gerado", "pago"]
    }
  }

  stack {
    db.patch "" {
      field_name = "id"
      field_value = $input.id
      data = {
        competencia     : $input.competencia
        salario_bruto   : $input.salario_bruto
        descontos_inss  : $input.descontos_inss
        descontos_irrf  : $input.descontos_irrf
        outros_descontos: $input.outros_descontos
        salario_liquido : $input.salario_liquido
        holerite_arquivo: $input.holerite_arquivo
        status          : $input.status
      }
    } as $result
  }

  response = $result
  guid = "61nQ9hmlk_vVcJCDYaaA3XF7elk"
}