# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "hpdf"
  s.version = "2.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Takeshi Kanno", "Emmanuel Oga"]
  s.date = "2012-02-19"
  s.summary = "Bindings for libharu2: a C language PDF generation library."
  s.email = "oga_emmanuel_oga@yahoo.com.ar"
  s.require_paths = ["lib"]
  s.autorequire = "hpdf"

  s.files = ["README", "History", "License"] + Dir.glob("ext/**/*") + Dir.glob("tests/**/*")

  s.extensions = ["ext/extconf.rb"]

  s.test_files = ["tests/test_all_examples.rb"]

  s.extra_rdoc_files = ["README"]

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end

end