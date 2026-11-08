// Query all checklist_itens records
query checklist_itens verb=GET {
  api_group = "Authentication"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $checklist_itens
  }

  response = $checklist_itens
  guid = "RfyE2T6TjiKTnz_knqfaB0ojRz4"
}