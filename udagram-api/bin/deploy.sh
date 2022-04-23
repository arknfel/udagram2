echo hi we are at: $(pwd)
ls -la
eb init udagram-api
eb use udagram-api-dev
eb deploy