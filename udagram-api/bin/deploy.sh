echo hi we are at $(pwd)
ls -la
eb init udagram-api-app
eb use udagram-api-app-dev
eb setenv POSTGRES_USER=postgres \
POSTGRES_PASSWORD=postgres \
POSTGRES_DB=udagram \
DB_PORT=5432 \
POSTGRES_HOST=udagram-db.cu8ywbspb3t6.us-east-1.rds.amazonaws.com
eb deploy