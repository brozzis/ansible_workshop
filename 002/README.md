## ah-hoc & inventory configuration

- ping
- useradd

```bash
ansible -m ping all [-i inventory]
```

user ansible already exists:

```bash
ansible -m ansible.builtin.user -a "name=ansible state=absent" -u root all
ansible -m ping all

ansible -m ansible.builtin.user -a "name=ansible groups=wheel" -u root all
ansible -m ping all


```

### test with a different inventory

```bash
ansible-console -i inventory
ansible-console -i inventory02
```

~~~
ansible -m command -a id -i inventory all
172.16.198.162 | CHANGED | rc=0 >>
uid=1001(ansible) gid=1001(ansible) groups=1001(ansible),10(wheel) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
172.16.198.198 | CHANGED | rc=0 >>
uid=1001(ansible) gid=1001(ansible) groups=1001(ansible),10(wheel) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
~~~

~~~
ansible -m command -a id -i inventory02 all
172.16.198.198 | CHANGED | rc=0 >>
uid=0(root) gid=0(root) groups=0(root) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
172.16.198.162 | CHANGED | rc=0 >>
uid=1001(ansible) gid=1001(ansible) groups=1001(ansible),10(wheel) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
~~~


~~~
ansible -m debug -a "var=my_variable" -i inventory02 all
172.16.198.162 | SUCCESS => {
    "my_variable": "Welcome to the web server"
}
172.16.198.198 | SUCCESS => {
    "my_variable": "Welcome to the db server"
}
~~~
