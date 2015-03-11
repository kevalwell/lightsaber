user1 = User.create(email: "test", password: "test")
user2 = User.create(email: "123", password: "123")

employee1 = Employee.create(name: "Bono", store_name: "Loews")
employee2 = Employee.create(name: "Consuevo", store_name: "HomeDepot")

review1 = Review.create(store_name: "Loews", rating: '5', comment: "Employee was very helpful", employee_id: employee1.id, user_id: user1.id)
review2 = Review.create(store_name: "Loews", rating: '2', comment: "Employee was not courteous, and smelled funny.", employee_id: employee1.id, user_id: user2.id)
review3 = Review.create(store_name: "Home Depot", rating: '4', comment: "Employee seemed very knowledgable", employee_id: employee2.id, user_id: user1.id)
