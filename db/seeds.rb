Sheet.delete_all
Tag.delete_all
Profile.delete_all
User.delete_all

jorge = User.create({
  email: 'jorge@test.com',
  password: 'abcd1234'
})
mark = User.create({
  email: 'mark@test.com',
  password: 'abcd1234'
})
matthijs = User.create({
  email: 'matthijs@test.com',
  password: 'abcd1234'
})
nienke = User.create({
  email: 'nienke@test.com',
  password: 'abcd1234'
})
admin = User.create({
  email: 'admin@test.com',
  password: 'abcd1234'
})

pr_jorge = Profile.create({
  first_name: 'Jorge',
  last_name: 'Oosthoek',
  avatar: open('https://avatars0.githubusercontent.com/u/19707056?v=3&s=460'),
  bio: 'Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Maecenas malesuada.',
  user: jorge
})
pr_mark = Profile.create({
  first_name: 'Mark',
  last_name: 'Nuiver',
  avatar: open('https://avatars0.githubusercontent.com/u/16024059?v=3&s=460'),
  bio: 'Praesent congue erat at massa. Sed cursus turpis vitae tortor. Donec posuere vulputate arcu.',
  user: mark
})
pr_matthijs = Profile.create({
  first_name: 'Matthijs',
  last_name: 'van den Berg',
  avatar: open('https://avatars0.githubusercontent.com/u/16759160?v=3&s=460'),
  bio: 'Phasellus consectetuer vestibulum elit. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc.',
  user: matthijs
})
pr_nienke = Profile.create({
  first_name: 'Nienke',
  last_name: 'Bos',
  avatar: open('https://avatars2.githubusercontent.com/u/20145582?v=3&s=460'),
  bio: 'Vestibulum fringilla pede sit amet augue. In turpis. Pellentesque posuere. Praesent turpis.',
  user: nienke
})
pr_admin = Profile.create({
  first_name: 'Wouter',
  last_name: 'de Vos',
  avatar: open('https://avatars0.githubusercontent.com/u/309331?v=3&s=460'),
  bio: 'Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus.',
  user: admin
})

ruby = Tag.create({ title: 'Ruby' })
rails = Tag.create({ title: 'Rails '})
ajax = Tag.create({ title: 'AJAX' })
javascript = Tag.create({ title: 'JavaScript' })
jquery = Tag.create({ title: 'jQuery' })
es6 = Tag.create({ title: 'ES6' })
react = Tag.create({ title: 'React' })
redux = Tag.create({ title: 'Redux' })
feathers = Tag.create({ title: 'Feathers' })
tdd = Tag.create({ title: 'TDD' })
git = Tag.create({ title: 'Git' })
github = Tag.create({ title: 'Github' })
setup = Tag.create({ title: 'Setup' })

rails_model = Sheet.create({
  title: 'Generate model in Rails',
  body: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.',
  tags: [ rails, setup ]
})
mergeconflict = Sheet.create({
  title: 'Solve a merge conflict in Git',
  body: 'Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia.',
  tags: [ git ]
})
react_feathers = Sheet.create({
  title: 'Connect a React/Redux frontent to a Feathers backend',
  body: 'Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus. Donec mollis hendrerit risus. Phasellus nec sem in justo pellentesque facilisis. Etiam imperdiet imperdiet orci. Nunc nec neque. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi.',
  tags: [ react, redux, feathers ]
  })
