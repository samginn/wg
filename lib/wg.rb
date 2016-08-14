require "wg/version"

module Wg
  @workspace_dir = "#{Dir.home}/w/"
  @git_dirs = {
    :github => "g/h/",
    :gitlab => "g/l/"
  }
  @git_urls = {
    :github => "github.com",
    :gitlab => "gitlab.com"
  }

  def self.build_directory(reponame, git = :github)
    "#{@workspace_dir}#{@git_dirs[git]}#{reponame}"
  end

  def self.dir_exists?(directory)
    File.directory?(directory)
  end

  def self.clone_repo(reponame, git = :github)
    exec "git clone git@#{@git_urls[git]}:#{reponame}.git #{self.build_directory(reponame, git)}"
  end
end
