Given /^(?:I|they|"([^\"]*)") (?:have|has) the role "([^\"]*)"$/ do |full_name, role_name|
  find_or_create_role(role_name)
  staff = full_name ? Staff.find_by_full_name!(full_name) : @current_staff
  staff.roles << @role
end

When /^I try to delete the role "([^\"]*)"$/ do |role_name|
  page.driver.submit :delete, role_path(find_or_create_role(role_name)), {}
end
