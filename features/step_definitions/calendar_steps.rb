Then /^I should see all months in the year$/ do
    if page.respond_to? :should
      page.should have_content()
    end
end
