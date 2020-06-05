module ApplicationHelper

	def meta_tag(tag, text)
		content_for :"meta_#{tag}", text
	end

	def yield_meta_tag(tag, default_text='')
		content_for?(:"meta_#{tag}") ? content_for(:"meta_#{tag}") : default_text
	end

	def no_index
		content_for(:no_index, true)
	end
end