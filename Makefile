
unregister:
  subscription-manager remove --all
  subscription-manager unregister
  subscription-manager clean
  yum clean all

register:
  subscription-manager register
  subscription-manager refresh

search: 
  subscription-manager list --available

attach:
  subscription-manager attach --pool=2c9472de8af289b0018afe9fd270081a

