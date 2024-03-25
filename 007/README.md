## playbooks


- [Selective failure, multi play](play02.yaml)
- [Rename nodes, tags](play_rename.yaml)
    reboot

### options

- -f
- -C /  --check

- ansible-playbook play02.yaml --list-hosts
- ansible-playbook play_rename.yaml --list-tags
- ansible-playbook play_rename.yaml --list-tasks

- * idempotency

- ansible-lint
