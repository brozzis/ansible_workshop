## define variables in inventory

### in the inventory file itself

### in group_vars

### in host_vars


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