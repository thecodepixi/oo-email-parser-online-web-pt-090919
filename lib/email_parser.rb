# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry" 
class EmailAddressParser
  
  attr_accessor :emails 
  
  def initialize(emails) 
    @emails = emails 
  end 
  
  def parse 
   parsed = @emails.split(/(\s|[,])/)
   
   parsed.each do |x|
     if x == " " || x == "," || x == "" 
       parsed.delete(x)
     end 
   end 
   parsed 
  end 
  
end 