railscasts-episodes
===================

Ruby script to sync Railscasts.com repositories locally based on https://gist.github.com/ryanb/2866591

Usage
===================

git clone https://github.com/Applicat/railscasts-episodes.git
cd railscasts-episodes
bundle install
ruby sync_repositories.rb # clones every repository from github.com/railscasts/* which have not been cloned locally yet