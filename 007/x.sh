echo "---"
echo "- name: template [$*]"
echo "  hosts: all"
echo "  tasks:"
for i in $*
do
    echo "# $i"
    ansible-doc $i | sed -n '/^EXAMPLES/,$p' | sed -n '2,/^$/p' | sed 's/^/    /'
done