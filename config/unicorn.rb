# frozen_string_literal: true

require 'fileutils'
preload_app true
timeout 5
worker_processes 1
listen '/tmp/nginx.socket', backlog: 1024

before_fork do |_server, _worker|
  FileUtils.touch('/tmp/app-initialized')
end
