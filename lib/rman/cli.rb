require "rbconfig"
require "rdoc"
require "rdoc/generator/mdoc"

module Rman
  class CLI
    def run
      store = RDoc::RI::Store.new(RDoc::RI::Paths.system_dir)
      store.load_all
      RDoc::Generator::Mdoc.new(store, options).generate
    end

    private

    def options
      RDoc::Options.new.tap do |options|
        options.op_dir = output_directory
        options.mandb_section = mandb_section
      end
    end

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
