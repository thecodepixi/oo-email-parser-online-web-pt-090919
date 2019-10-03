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
   parsed = @emails.split(/(\s|(,\s))/)
   final_list = []
   
   parsed.each do |x|
     if x == " " || x == ", " 
       parsed.delete(x)
     end 
   end 
   
   parsed.each do |email|
     if !final_list.include?(email)
       final_list << email
     end 
   end 
   
   final_list
   
  end 
  
end 