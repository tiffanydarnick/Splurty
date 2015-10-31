require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
 	
 	test "unique_tag" do
 		quote = Quote.create(:author=>'Hamish Blake', :saying=>'No you are not.')
 		expected = 'HA#' + quote.id.to_s
 		actual = quote.unique_tag
 		assert_equal expected, actual
 	end
end
