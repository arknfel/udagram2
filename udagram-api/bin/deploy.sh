echo hi we are at $(pwd)
ls -la
eb init udagram-api-app
eb use udagram-api-app-dev
eb setenv POSTGRES_USER=postgres \
POSTGRES_PASSWORD=postgres \
POSTGRES_DB=udagram \
DB_PORT=5432 \
POSTGRES_HOST=udagram-db.cu8ywbspb3t6.us-east-1.rds.amazonaws.com \
JWT_SECRET=U\$hal!notPA\$s! \
URL=http://udagram-api-app-dev.us-east-1.elasticbeanstalk.com/api/v0
AWS_REGION=us-east-1 \
AWS_BUCKET=randomsat-b01 \
AWS_PROFILE=default
eb deploy