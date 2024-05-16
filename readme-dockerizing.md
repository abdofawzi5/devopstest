# Django application & postgresql dockerized
> A basic dockerized dev environment for a django application besides a postgresql database service.

## Start your stack
1. You need to set up some basic env values
    - Create `.env` file in the root working directory of the project
      ```bash
      touch .env
      ```
    - Make sure your .env containes the below values (don't forget to fill them out ^_^)
      ```
      DB_NAMES=
      DB_USER=
      DB_PASSWORD=
      ```
2. Build and start your app for the first time
    ```bash
    docker compose up --build
    ```

## Manage your stack state (build, start, stop)
- Start your env for the first time
  ```bash
  docker compose up --build 
  ```

- Stop the env
  ```bash
  docker compose stop
  ```

- Start the env
  ```bash
  docker compose start
  ```

- Start your env recreating containers
  ```
  docker compose up --force-recreate
  ```

