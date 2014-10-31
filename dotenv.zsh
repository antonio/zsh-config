#!/bin/zsh

on_enter_hook() {}
on_exit_hook() {}

dotenv () {
  on_exit_hook
  if [[ -a $PWD/.env ]]; then
    grep on_enter_hook $PWD/.env >/dev/null 2>&1 || eval "on_enter_hook() {}"
    grep on_exit_hook $PWD/.env >/dev/null 2>&1  || eval "on_exit_hook() {}"

    . $PWD/.env
  else
    eval "on_enter_hook() {}"
    eval "on_exit_hook() {}"
  fi
  on_enter_hook
}

chpwd_functions+=dotenv
