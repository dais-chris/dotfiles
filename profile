# Java
#export JAVA_HOME="$(/usr/libexec/java_home)"

# Build tools
export ANT_HOME="$(realpath $(brew --prefix ant))/libexec"
export MAVEN_HOME="$(realpath $(brew --prefix maven))/libexec"
export GRADLE_HOME="$(realpath $(brew --prefix gradle))/libexec"
export SBT_HOME="$(realpath $(brew --prefix sbt))/libexec"

# Set PATH appropriately
export PATH="$HOME/.jenv/bin:$PATH"

# Explicitly set our timezone
export TZ='America/Chicago'
