require "optparse"
require "rbconfig"
require "rdoc"
require "rdoc/generator/mdoc"
require "rman/version"

module Rman
  class CLI
    EX_OK = 0

    def self.run(*args)
      new(*args).run
    end

    def initialize(argv)
      @argv = argv
    end

    def run
      parse_arguments
      generate_manual_pages
    end

    private

    attr_reader :argv

    def parse_arguments
      option_parser.parse!(argv)
    end

    def option_parser
      OptionParser.new do |options|
        options.banner = "usage: rman [-v | --version] [-h | --help]"

        options.on_tail("--version", "-v", "Display the version and exit") do
          puts VERSION
          exit EX_OK
        end

        options.on_tail("--help", "-h", "Display this help message and exit") do
          puts options
          exit EX_OK
        end
      end
    end

    def generate_manual_pages
      puts "Generating and installing man pages for Ruby #{ruby_version} in "\
        "~/.man..."
      store = RDoc::RI::Store.new(RDoc::RI::Paths.system_dir)
      store.load_all
      RDoc::Generator::Mdoc.new(store, options).generate
    end

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
