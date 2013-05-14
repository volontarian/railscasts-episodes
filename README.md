railscasts-episodes
===================

Ruby script to sync Railscasts.com repositories locally based on https://gist.github.com/ryanb/2866591

Usage
===================

<pre>
git clone https://github.com/Applicat/railscasts-episodes.git
cd railscasts-episodes
rvm --create use 1.9.3@railscasts-episodes # or use rbenv if you like
bundle
ruby sync_repositories.rb # clones every repository from github.com/railscasts/* which have not been cloned locally yet
</pre>
