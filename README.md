# bash

- print something

```sh
echo "something to print"
```

- default variables

```sh
echo $RANDOM
echo $SHELL
echo $USER
echo $PWD
echo $HOSTNAME
```

- running a command inside another command

```sh
echo $(whoami)
```

- **SIMPLE DEFINED VARIABLE CANNOT BE ACCESSED BY CHILDREN PROCESSES,
SO IF YOU WANT TO DO THAT USE FROM `export`**

```sh
ali="Aliakbar"
export ali="Aliakbar"
```

> for having permanent variable you should define your variables
> in the first runned bashed config file like `.bashrc` or `.zshrc`!
