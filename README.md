## Install

### Clone the repository

```shell
git clone https://github.com/sohail272/contact-portal.git
cd project
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like ruby 2.4.4

If not, install the right ruby version using rvm:

```shell
rvm install 2.4.4
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler):

```shell
bundle
```

### Initialize the database

```shell
rails db:create db:migrate
```

## Serve

```shell
rails s
```
## Test

```shell
rspec
```
