# Author(s): Pai Fu, Cesar, Bayardo

# XorHelper provides an encode method to xor a file with a key
module XorHelper

  # XOR encodes/decodes a document with a key
  # Parameters:
  #   doc: string
  #   key: string
  # Returns: string
  def self.encode(doc, key)
    # Enter all your code into this method (only!)
    
	# x is transforming doc's string into an array 
	# y is transforming key's string into an array 
	
   	x = doc.chars.map #{|a| a}	
	y = key.chars.map #{|b| b}
			
	# z represents the combining with x and rotating y	
    	z = x.zip(y.cycle)
	
    # return the string using exclusive or to encryption or decryption
    return z.map { |c,d| (c.ord ^ d.ord).chr}.join     
  end
end
