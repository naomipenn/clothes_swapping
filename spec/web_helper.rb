def add_an_item
  @user = User.create(email: 'test@test.com')
  @item = Item.new(size: 'XS', color: 'Orange', category: 'Onesie', description: 'Pokemon onesie', user: @user)
  @item.save!
end
