# Teravoz Challenge

- Original devops challenge:

https://github.com/teravoz/challenge/tree/master/devops

- Instructions for running the environment

1- Clone project
```
git clone git@github.com:lcarneirofreitas/challenge-teravoz.git
```

2- Running app webhook vm
```
cd webhook/ && 

vagrant up

vagrant ssh

sudo su - && docker logs -f webhook

```

3- Running app tgibf vm
```
cd tgibf/ &&

vagrant up

vagrant ssh

sudo su - && docker logs -f tgibf
```

# Next Steps

- event persistence on file

- add nginx as reverse proxy and escalate webhook application

