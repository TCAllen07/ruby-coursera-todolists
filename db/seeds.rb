
User.destroy_all
User.create! [
  { username: "Fiorina", password_digest: '123'},
  { username: "Trump", password_digest: '123'},
  { username: "Carson", password_digest: '123'},
  { username: "Clinton", password_digest: '123'},
]
Profile.destroy_all
Profile.create! [
  {first_name: "Carly", last_name: "Fiorina", gender: "female", birth_year:1954 },
  {first_name: "Donald", last_name: "Trump", gender: "male", birth_year:1946 },
  {first_name: "Ben", last_name: "Carson", gender: "male", birth_year:1951 },
  {first_name: "Hillary", last_name: "Clinton", gender: "female", birth_year:1947 },
]

TodoList.destroy_all
# TodoList.create! [
#   { user: User.find(username:"Fiorina") , list_name: "mylist", list_due_date: Date.today+1.year },
#   { user: User.find(username:"Trump") , list_name: "list_Trump", list_due_date: Date.today+1.year },
#   { user: User.find(username:"Carson") , list_name: "list_Carson", list_due_date: Date.today+1.year },
#   { user: User.find(username:"Clinton") , list_name: "list_Clinton", list_due_date: Date.today+1.year },
# ]
User.all.each do  |u|
  TodoList.create( {user:u, list_name: "mylist", list_due_date: Date.today+1.year } )
end

TodoList.all.each do  |tl|
  # TodoItem.create! [
  tl.todo_items.create! [
    { title: "Task 1", due_date: Date.today+1.year, description: "very important task TEST", completed: false },
    { title: "Task 2", due_date: Date.today+1.year, description: "do something else TEST", completed: true},
    { title: "Task 3", due_date: Date.today+1.year, description: "learn Action Pack TEST", completed: true},
    { title: "Task 4", due_date: Date.today+1.year, description: "learn Action Pack TEST", completed: true},
    { title: "Task 5", due_date: Date.today+1.year, description: "learn Action Pack TEST", completed: true},
  ]
end
