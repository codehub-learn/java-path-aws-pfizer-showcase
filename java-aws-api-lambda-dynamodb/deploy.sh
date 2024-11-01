export ACCOUNT_ID=$(aws sts get-caller-identity --output text --query Account)
cd infrastructure
cdk bootstrap
# In case you cannot find a unix shell to run the above command, you can use the following command:
# cdk bootstrap aws://<ACCOUNT_NUMBER>/<REGION>
cdk deploy --outputs-file target/output.json