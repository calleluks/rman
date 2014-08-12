require "rbconfig"
require "rdoc"
require "rdoc/generator/mdoc"

module Rman
  class CLI
    def run
      store = RDoc::RI::Store.new(RDoc::RI::Paths.system_dir)
      store.load_all
      options = RDoc::Options.new
      options.op_dir = output_directory
      options.mandb_section = mandb_section
      RDoc::Generator::Mdoc.new(store, options).generate
    end

    private

    def output_directory
      File.expand_path("~/.man")
    end

    def mandb_section
      "3-ruby-#{ruby_version.gsub(".", "-")}"
    end

    def ruby_version
      RbConfig::CONFIG["ruby_version"]
    end
  end
end
