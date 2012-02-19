require 'test/unit'
require 'fileutils'

class TestAllExamples < Test::Unit::TestCase
 
	def test_all_examples
		
		examples_path = File.join(File.dirname(__FILE__), '*.rb')
		
		programs= Dir[examples_path]
		
		programs.each do |prog_name|
			
			next if File.basename(prog_name) == "test_all_examples.rb"
			
			pdf_file= File.basename(prog_name) + ".pdf"
			
			print "Generating #{pdf_file}..."
				
			$demo_output_filename= pdf_file
			require(prog_name)
				
			assert File.exist?(pdf_file)
				
			FileUtils.rm pdf_file, :force => true
			
			puts "done."
		end
	end
end

