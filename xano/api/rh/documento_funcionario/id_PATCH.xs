// Editar documento
query "documento_funcionario/{id}" verb=PATCH {
  api_group = "rh"
  auth = "user"

  input {
    int id
    enum tipo? {
      values = ["rg", "cpf", "ctps", "comprovante_residencia", "contrato", "outro"]
    }
  
    attachment? arquivo?
  }

  stack {
    db.patch "" {
      field_name = "id"
      field_value = $input.id
      data = {tipo: $input.tipo, arquivo: $input.arquivo}
    } as $result
  }

  response = $result
  guid = "lcM_RTmTk7ECohhDwXuhaXr9Omw"
}