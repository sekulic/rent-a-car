FactoryGirl.define do
  factory :car do |f|
    name "Some car"
    description "Some description"
    available true   
    f.photo1 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'car.jpeg'), "image/jpeg") }    
    f.photo2 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'car.jpeg'), "image/jpeg") }    
    f.photo3 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'car.jpeg'), "image/jpeg") }    
  end
end
