# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
attr_accessor :email_addresses



def initialize(email_addresses)
  @email_addresses = email_addresses
end

def parse

  emails = @email_addresses.split(/[, ]/)
  #emails_white_space_removed = emails.map { |item| item.strip  }
  #emails_white_space_removed.each_with_index do |email, index|
  #  count = emails_white_space_removed.count(email)
    #if count >= 2
    #  emails_white_space_removed.delete_at(index)
    #end
  #end
  emails.each_with_index do |email, index|

    count = emails.count(email)

    if count >= 2
     emails.delete_at(index)


   elsif email.empty?
      emails.delete_at(index)

    end
  end


  emails.each_with_index do |email, index|

    if email.empty?
      emails.delete_at(index)
    end

  end
end








end
