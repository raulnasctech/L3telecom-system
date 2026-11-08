// Add Obras record
query obras verb=POST {
  api_group = "rh"

  input {
    dblink {
      table = "Obras"
    }
  }

  stack {
    db.add Obras {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $obras
  }

  response = $obras
  guid = "Ire-aKS0INlWo14PXRCi4GJQ2lc"
}