# For more information, see https://containers.dev/guide
FROM mcr.microsoft.com/devcontainers/ruby:3.2

# [Optional] Install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# [Optional] Install Node.js for Rails asset pipeline, JS bundling, etc.
RUN su vscode -c ". /usr/local/share/nvm/nvm.sh && nvm install 20 && nvm use 20"

# [Optional] Install Yarn package manager
RUN corepack enable && corepack prepare yarn@stable --activate

# [Optional] Install any global npm packages
# RUN npm install -g <your-package-list-here>

# [Optional] Install any needed Ruby gems (e.g., rails, bundler)
RUN gem install bundler

# [Optional] Copy dependency files and install
COPY Gemfile* /workspace/
RUN cd /workspace && bundle install || true

# Set the default working directory
WORKDIR /workspace

# [Optional] Expose ports (e.g., Rails default 3000)
EXPOSE 3000

# [Optional] Set up a non-root user (default is vscode)
# USER vscode
