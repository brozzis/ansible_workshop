## Inventory and variable definitions

> Ansible uses variables to manage differences between systems. With Ansible, you can execute tasks and playbooks on multiple different systems with a single command. To represent the variations among those different systems, you can create variables with standard YAML syntax, including lists and dictionaries. You can define these variables in your playbooks, in your inventory, in reusable files or roles, or at the command line. You can also create variables during a playbook run by registering the return value or values of a task as a new variable


### in the inventory file itself

### in group_vars

~~~
group_vars/<groupname>
~~~

### in host_vars

~~~
host_vars/<hostname>
~~~


~~~
grep -r my_var *
group_vars/db:my_variable: "this is new"
inventory:my_variable="Welcome to the db server"
inventory:my_variable="Welcome to the web server"

ansible -m debug all -a "var=my_variable"
172.16.198.162 | SUCCESS => {
    "my_variable": "Welcome to the web server"
}
172.16.198.198 | SUCCESS => {
    "my_variable": "this is new"
}
~~~