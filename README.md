# README

## Development

### Development in docker.
Please have [docker](https://www.docker.com/products/docker-desktop) and [docker-compose](https://docs.docker.com/compose/install/) installed.

Check out the code:
`git clone https://github.com/opennorthwest/speed-dating-app`

Build the docker image:
```$ docker-compose build
postgres uses an image, skipping
Building app
Step 1/10 : FROM ruby:2.5.1
 ---> 3c8181e703d2
<snipped>
Removing intermediate container 790b130712d8
 ---> 207a23974153

Successfully built 207a23974153
Successfully tagged speed-dating-app_app:latest
```

Start the docker containers:
```$ docker-compose up
Starting speed-dating-app_postgres_1 ... done
Starting speed-dating-app_app_1      ... done
Attaching to speed-dating-app_postgres_1, speed-dating-app_app_1
```

Create the database:
`$ docker-compose exec app bundle exec rake db:create`

Run migrations if you haven't:
`$ docker-compose exec app bundle exec rake db:migrate`

At this point, you should be able to browse to the application on localhost:3000
