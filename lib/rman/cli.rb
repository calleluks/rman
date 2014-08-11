require "rdoc"
require "rdoc/generator/mdoc"

module Rman
  class CLI
    def run
      store = RDoc::RI::Store.new(RDoc::RI::Paths.system_dir)
      store.load_all
      options = RDoc::Options.new
      options.op_dir = "doc"
      RDoc::Generator::Mdoc.new(store, options).generate
    end
  end
end
