// Add announcement record
query announcement verb=POST {
  api_group = "rh"

  input {
    dblink {
      table = "announcement"
    }
  }

  stack {
    db.add announcement {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $announcement
  }

  response = $announcement
  guid = "n-Mg2F43u2P2d_mLuBu-VUu6I6c"
}