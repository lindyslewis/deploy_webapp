# Deploy Webapp

# deploy.sh

 - calls aws cloudformation create-stack
 - passes in the CloudFormation template JSON file

# cloud_formation_template.json

 - LaunchConfig with UserData

  - UserData installs git
  - UserData clones this repo
  - UserData downloads and installs rvm
  - UserData installs Sinatra gem
  - UserData logs app.rb to rubyApp.log

 - ElasticLoadBalancer with instance port listening at 4567

 - ASG of size 2

 - Output ELB URL


# app.rb

 - Gets the instance number using Net::HTTP.get(uri)
 - Outputs the instance number at the web root
