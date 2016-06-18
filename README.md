[install Vagrant](http://www.vagrantup.com/downloads.html). 

```bash
vagrant plugin install vagrant-parallels
```

```bash
vagrant up --provider=parallels
```


```bash
vagrant ssh

#(then, within the SSH session:)

python manage.py migrate

python manage.py createsuperuser

nohup python manage.py runserver [::]:8000 >&/dev/null &
exit
```

[http://localhost:8000](http://localhost:8000)