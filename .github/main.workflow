workflow "New workflow" {
  on = "push"
  resolves = [
    "Hello World",
    "sh-1",
    "ifconfig.me",
  ]
}

action "Hello World" {
  uses = "./action-a"
  env = {
    MY_NAME = "Mona"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}

action "sh-1" {
  uses = "actions/bin/sh@master"
  args = [
    "ls -la /",
    "pwd",
    "ls -ltr"
  ]
}

action "ifconfig.me" {
  uses = "docker://gcr.io/cloud-builders/curl"
  args = ["-s", "ifconfig.me"]
}
