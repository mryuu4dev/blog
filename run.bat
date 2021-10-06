@echo off
gem install bundler && bundler install && cd docs && bundle exec jekyll serve