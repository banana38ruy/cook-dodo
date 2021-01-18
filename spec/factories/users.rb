FactoryBot.define do
  factory :user do
    nickname                      {'雪だるま'}
    email                          {'yamada389@com'}
    password                       {"0000yuki"}
    password_confirmation          {password}
  end
end