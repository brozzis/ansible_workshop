## Modules 102

- lineinfile
- template

### Useful modules

|                 |                                     |
| --------------- | ----------------------------------- |
| user            |                                     |
| authorized_key  | lookup('file', '..')                |
| openssh_keypair |                                     |
| known_host      |                                     |
| at              |                                     |
| crond           |                                     |
| yum             |                                     |
| yum_repository  |                                     |
| rpm_key         |                                     |
| copy            | content=.. dest=..                  |
| fetch           |                                     |
| acl             |                                     |
| find            |                                     |
| replace         | repl string given regex             |
| synchronize     | rsync - like                        |
| stat            |                                     |
| template        |                                     |
| file            | state=directory recurse=yes path=.. |
| lineinfile      |                                     |
| blockinfile     |                                     |
| parted          |                                     |
| lvg             |                                     |
| lvol            |                                     |
| filesystem      |                                     |
| mount           |                                     |
| firewalld       | state permanent immediate           |
| service         | state enabled                       |
| sysctl          |                                     |
| sefcontext      |                                     |
| selinux         |                                     |
| seboolean       |                                     |
| timezone        |                                     |
| archive         |                                     |
| shell           |                                     |
| command         |                                     |
| package_facts   |                                     |
| get_url         | url= dest= force= ...               |
| assert          |                                     |
| fail            | instead of failed_when              |
| slurp           |                                     |


 - [How to lineinfile](lif.yaml)
 - [How to template](test_template.yaml)
 - [Creation of /etc/hosts](file_hosts.yaml)
 