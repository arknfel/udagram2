# Local development environment

A run book to help deploy and run the udagram app on a local development environment.  

## Requirements
- Node v14.15.1 (LTS) or more recent. While older versions can work it is advisable to keep node to latest LTS version  

- npm 6.14.8 (LTS) or more recent, Yarn can work but was not tested for this project  

- docker  
  or an available local Postgresql DB server at port 5432  


## Steps:

1. To clone repo: `git clone https://github.com/arknfel/udagram2.git`  

2. At the repo root dir: `cd udagram-api`  
  to install back-end dependencies,  
  run: `npm ci` to adhere to the package-lock.json (recomended)  
  or run: `npm install` to adhere to the package.json  

3. At the repo root dir: `cd udagram-frontend`  
  to install front-end dependencies,  
  run: `npm ci` to adhere to the package-lock.json (recomended)  
  or run: `npm install` to adhere to the package.json  

4. Make sure that the environment variables in the `./udagram-api/src/config/config.ts` are stisfied, example `.env` file:  
    ```bash
    POSTGRES_DB=udagram
    POSTGRES_USER=arknfel
    POSTGRES_PASSWORD=arknfel
    POSTGRES_HOST=127.0.0.1
    DB_PORT=5432
    PORT=8080
    JWT_SECRET=UshallnotPASS
    ```  
  
5. If using docker, at dir `udagram-api`  
  run: `docker-compose -f docker-compose.yml up`  

6. To launch the back-end app:  
  at dir `udagram-api`  
  run: `npm run dev`  

7. To launch the front-end app:  
  at dir `udagram-frontend`  
  run: `npm run start`  

8. The app should be usable at `http://localhost:4200`  


