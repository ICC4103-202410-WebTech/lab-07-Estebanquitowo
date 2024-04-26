# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
PostTag.destroy_all
Post.destroy_all
User.destroy_all
Tag.destroy_all


User.create(
    name:'Estebanquitowo', 
    email:'humitas@gmail.com', 
    password:'A54gs546WAynd'
    )
User.create(
    name:'Estebanquito', 
    email:'solbadhuy@gmail.com', 
    password:'BU83DjdiqpSsi01'
    )
User.create(
    name:'John Doe', 
    email:'example@gmail.com', 
    password:'1203495k'
    )
User.create(
    name:'jhon meme', 
    email:'el_memeador@gmail.com', 
    password:'dogedogedogeegod_64'
    )
User.create(
    name:'Andrés Pérez', 
    email:'aperez@gmail.com', 
    password:'S9bf30D'
    )

p1 = Post.create(
    title:'Peo', 
    content:'peo.png', 
    user_id: 2, 
    published_at: '05/01/17 15:32', 
    answers_count: 0, 
    likes_count: 0
    )
p2 = Post.create(
    title:'zootopia trivia', 
    content:'sabias que en zootopia tuvieron que animar en 34 frames por segundo en vez de en 24 para saber mas busca rule34 zootopia', 
    user_id: 1, 
    published_at: '14/04/17 07:00', 
    answers_count: 2, 
    likes_count: 7
    )
p3 = Post.create(
    title:'funnis los memes', 
    content:'cool_meme.jpeg', 
    user_id: 4, 
    published_at: '21/04/19 19:00', 
    answers_count: 3, 
    likes_count: 69
    )
p4 = Post.create(
    title:'Got accepted at harvar', 
    content:'didnt say i was going', 
    user_id: 3, 
    published_at: '09/05/19 10:41', 
    answers_count: 5, 
    likes_count: 23
    )
p5 = Post.create(
    title: 'Post 1', 
    content:'text', 
    user_id: 5, 
    published_at: '11/06/19 14:52', 
    answers_count: 34, 
    likes_count: 15
    )
p6 = Post.create(
    title: 'Como procesar las bachichas', 
    content: 'nose', 
    user_id: 5, 
    published_at: '11/08/19 06:36', 
    answers_count: 81, 
    likes_count: 102
    )
p7 = Post.create!(
    title: 'Post 7',
    content: 'Content of post 7 is awesome',
    user_id: 4,
    answers_count: 4189,
    likes_count: 8454
    )
    #8
p8 = Post.create!(
    title: 'Post 8',
    content: 'deja de scrollear si de aca para abajo es puro down grade',
    user_id: 1,
    answers_count: 456,
    likes_count: 189
    )
    #9
p9 = Post.create!(
    title: 'Post 9',
    content: 'sorry papito no hay mas post',
    user_id: 5,
    answers_count: 1786,
    likes_count: 451
    )
    #10
    p10 = Post.create!(
    title: 'Sorry',
    content: 'WEON POR QUE NO LE PEDI A CHTGPT PARA QUE ME HAGA 10 DE ESTAS WEAS',
    user_id: 3,
    answers_count: 816518,
    likes_count: 489465
    )
t1 = Tag.create(
    name: 'Memes'
)
t2 = Tag.create(
    name: 'AHiT'
)
t3 = Tag.create(
    name: 'StaySafe'
)
t4 = Tag.create(
    name: 'CosasRandom'
)
t5 = Tag.create(
    name: 'Tag 1'
)

PostTag.create(post: p1, tag: t1)
PostTag.create(post: p1, tag: t2)

PostTag.create(post: p2, tag: t4)
PostTag.create(post: p2, tag: t5)

PostTag.create(post: p3, tag: t1)
PostTag.create(post: p3, tag: t5)

PostTag.create(post: p4, tag: t4)
PostTag.create(post: p5, tag: t5)

PostTag.create(post: p6, tag: t4)
PostTag.create(post: p7, tag: t2)

PostTag.create(post: p8, tag: t3)
PostTag.create(post: p9, tag: t5)

PostTag.create(post: p10, tag: t5)