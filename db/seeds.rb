bob = User.create(name:"Bob")
allison = User.create(name:"Allison")

session1 = Session.create(user_id:1)
grid1 = Grid.create(session_id:1)


a1 = Space.create(location: "0-0", bomb: true, grid_id: 1) #1
a2 = Space.create(location: "0-1", bomb: false, grid_id: 1) #2
b1 = Space.create(location: "1-0", bomb: false, grid_id: 1) #3
b2 = Space.create(location: "1-1", bomb: false, grid_id: 1) #4
