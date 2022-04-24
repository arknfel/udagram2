echo hi we are at: $(pwd)
ls -la
eb init udagram-api-app
eb use udagram-api-app-dev
eb deploy