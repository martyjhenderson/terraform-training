FROM gitpod/workspace-full

RUN brew install tfenv 
RUN brew install tflint
RUN brew install awscli