## Variables


### [Types](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_variables.html#using-variables)

```yaml
vars:
  boolean_var00: True
  boolean_var01: 'true'
  boolean_var02: 't'
  boolean_var03: 'yes'
  boolean_var04: 'y'
  boolean_var05: 'on'
  boolean_var06: '1'
  boolean_var07: 1
  boolean_var08: 1.0

  list_example:
    - 'one'
    - 'two'
    - 'three'

  list_element: "{{ list_example[1] }}"

  dict_example:
    key1: 'value1'
    key2: 'value2'
    key3: 'value3'

  dict_element: "{{ dict_example.key2 }}"
  dict_element2: "{{ dict_example['key2'] }}"
```


### [Where](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_variables.html#where-to-set-variables)

- inventory
    - file inventory
    - group_vars 
    - host_vars
- in the play 
    - ...
- runtime
    - ansible-playbook release.yml --extra-vars "version=1.23.45 other_variable=foo"

### [Variable precedence](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_variables.html#understanding-variable-precedence)
