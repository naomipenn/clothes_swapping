def add_an_item
  @user = User.create(email: 'test@test.com')
  @item = Item.new(size: 'XS', color: 'Orange', category: 'Onesie', description: 'Pokemon onesie', user: @user)
  @item.save!
end

def sign_up
  visit('/')
  click_link('Sign up')
  fill_in('Email', with: 'test@tmail.com')
  fill_in('Password', with: 'testtest')
  fill_in('Password confirmation', with: 'testtest')
  click_button('Sign up')
end

def another_sign_up
  visit('/')
  click_link('Sign up')
  fill_in('Email', with: 'tk@gma.com')
  fill_in('Password', with: 'tttttt')
  fill_in('Password confirmation', with: 'tttttt')
  click_button('Sign up')
end

def sign_out
  visit('/')
  click_link('Sign out')
end
