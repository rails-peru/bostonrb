Factory.sequence :company_name do |n|
  "ACME #{n}"
end

Factory.define :company do |company|
  company.name { Factory.next(:company_name) }
  company.website_url { "http://www.example.com" }
end
