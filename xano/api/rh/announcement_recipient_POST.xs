// Add announcement_recipient record
query announcement_recipient verb=POST {
  api_group = "rh"

  input {
    dblink {
      table = "announcement_recipient"
    }
  }

  stack {
    db.add announcement_recipient {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $announcement_recipient
  }

  response = $announcement_recipient
  guid = "oymCakxyV4PI_D61EC3HmzgvM2k"
}