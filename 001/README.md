## inventory

given the ip addresses, create an inventory with 2 different groups: web and db, 
arbitrarly assigning hosts to group


- clean up ansible.cfg
- ansible-inventory
- ansible-doc

```bash
echo "---"
echo "- name: template [$*]"
echo "  hosts: all"
echo "  tasks:"
for i in $*
do
    echo "# $i"
    ansible-doc $i | sed -n '/^EXAMPLES/,$p' | sed -n '2,/^$/p' | sed 's/^/    /'
done
```

