FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Some rationale"
    overtime_request 4.2
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Some more content"
    overtime_request 4.12
    user
  end

    factory :post_from_other_user, class: "Post" do
    date Date.yesterday
    rationale "Some more content"
    non_authorized_user
  end
end