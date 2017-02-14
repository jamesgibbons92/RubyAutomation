Before do
  @browser = Watir::Browser.new ENV['BROWSER'].to_sym
end

After do
  @browser.close
end
