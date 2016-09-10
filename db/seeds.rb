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

ruby = Tag.create({ title: 'Ruby', div_class: 'devicon-ruby-plain' })
rails = Tag.create({ title: 'Rails', div_class: 'devicon-rails-plain'})
ajax = Tag.create({ title: 'AJAX', div_class: 'devicon-nodejs-plain' })
javascript = Tag.create({ title: 'JavaScript', div_class: 'devicon-javascript-plain' })
jquery = Tag.create({ title: 'jQuery', div_class: 'devicon-jquery-plain' })
es6 = Tag.create({ title: 'ES6', div_class: 'icon-codaisseur' })
react = Tag.create({ title: 'React', div_class: 'devicon-react-plain' })
redux = Tag.create({ title: 'Redux', div_class: 'icon-codaisseur' })
feathers = Tag.create({ title: 'Feathers', div_class: 'icon-codaisseur' })
tdd = Tag.create({ title: 'TDD', div_class: 'icon-codaisseur' })
git = Tag.create({ title: 'Git', div_class: 'devicon-git-plain' })
github = Tag.create({ title: 'Github', div_class: 'devicon-github-plain' })
setup = Tag.create({ title: 'Setup', div_class: 'icon-codaisseur' })

rails_model = Sheet.create({
  title: 'Generate model in Rails',
  body: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.',
  tags: [ rails, setup ],
  user: admin
})
mergeconflict = Sheet.create({
  title: 'Solve a merge conflict in Git',
  body: 'Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia.',
  tags: [ git ],
  user: admin
})
react_feathers = Sheet.create({
  title: 'Connect a React/Redux frontent to a Feathers backend',
  body: 'Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus. Donec mollis hendrerit risus. Phasellus nec sem in justo pellentesque facilisis. Etiam imperdiet imperdiet orci. Nunc nec neque. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi.',
  tags: [ react, redux, feathers ],
  user: admin
})
git_commands = Sheet.create({
  title: 'Git commands',
  body:  '`git init` - Create a new git repository
          `git add .` - Add all changes to the staging area
          `git commit -m \'commit message\'` - Commit changes to the current branch
          `git push origin branch-name` - Push the current branch',
  tags: [ git ],
  user: admin
})
rails_controller = Sheet.create({
  title: 'Default controller actions in Rails',
  body: '```ruby
class ProductsController < ApplicationController
  # GET /products
  # GET /products.json
  def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: \'Product was successfully created.\' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: \'Product was successfully updated.\' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
end',
  tags: [ rails ],
  user: admin
})
