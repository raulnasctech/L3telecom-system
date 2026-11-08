// Add checklist_itens record
query checklist_itens verb=POST {
  api_group = "Authentication"

  input {
    dblink {
      table = ""
    }
  }

  stack {
    db.add "" {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $checklist_itens
  }

  response = $checklist_itens
  guid = "z2k2FATbSh51DVpQZ3_uxGdQKa8"
}