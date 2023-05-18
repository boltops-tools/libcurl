# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/extensiontask"
Rake::ExtensionTask.new "libcurl" do |ext|
  ext.lib_dir = "lib/libcurl"
end

task default: %i[compile]
