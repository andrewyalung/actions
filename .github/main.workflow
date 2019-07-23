version = 0

workflow "main" {
  on = "push"
  resolves = [ "HelloWorld" ]
}

action "HelloWorld" {
  uses = "./"
}