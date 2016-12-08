#!/bin/bash
# -*- mode: shell-scipt; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 filetype=sh

check() {
  return 255
}

depends() {
  return 0
}

install() {
  inst_rules 60-cdrom_id.rules
}

