require 'yaml'
require 'wordplay'

class Bot
	attr_reader :name # readable attribute called name

	def initialize(options)
		@name = options[:name] || "Unnamed Bot" # name = name otherwise it is an Unnamed bot
		begin
			@data = YAML.load(File.read(options[:data_file]))
		rescue 
			raise "Can't load bot data"
		end
	end

	def greeting
		# @data[:response][:greeting][rand(@data[:response][:greeting].length)]	
		random_response :greeting
	end

	def farewell
		# @data[:response][:farewell][rand(@data[:response][:farewell].length)]
		random_response :farewell
	end

	private
	def random_response(key)
		random_index = rand(@data[:responses][key].length)
		@data[:responses][key][random_index].gsub(/\[name\]/, @name)
	end

	public
	def response_to(input)
		prepared_input = preprocess(input).downcase
		sentence = best_sentence(prepared_input)
	end

	private
	def preprocess(input)
		perform_substitutions input
	end

	def perform_substitutions(input)
		@data[:presubs].each { |s| input.gsub!(s[0], s[1])}
		input
	end

	private
	def best_sentence(input)
		hot_words = @data[:responses].keys.select do |k|
			k.class == String && k ~= /^\w+$/
		end

		WordPlay.best_sentence(input.sentences, hot_words)
	end

end
