a=Dir.new("./spec/fixtures/mp3s")

b=[]
a.entries.each do |x|
  if x.include?("hello")
    b << x 
  end
  
end

b