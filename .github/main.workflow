workflow "Lint and Test" {
  on = "push"
  resolves = ["Lint"]
}

action "Lint" {
  uses = "actions-contrib/golangci-lint@master"
  args = "run"
}
