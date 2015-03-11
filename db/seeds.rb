user1 = User.create(email: "test", password: "test")
user2 = User.create(email: "123", password: "123")

employee1 = Employee.create(name: "Bono", store_name: "Loews", rating: "4", comment: "Bono was very nice! and had incredible hair")
employee2 = Employee.create(name: "Consuevo", store_name: "HomeDepot", rating: "3", comment: "Consueve provided excellent service I will be coming back")
employee3 = Employee.create(name: "Dong Chul", store_name: "Ali-Ba-Ba", rating: "5", comment: "This employee demonstrated excellence on many levels.")
employee4 = Employee.create(name: "Kevin", store_name: "Chili's", rating: "3", comment: "Ehhh.. This guy could have done more..")
employee5 = Employee.create(name: "Kareem Cheze", store_name: "Red Lobster's", rating: "1", comment: "Employee never came back to refill my beer, What the Heck!?")



review1 = Review.create(store_name: "Loews", rating: '5', comment: "Place was extremely dirty", employee_id: employee1.id, user_id: user1.id)
review2 = Review.create(store_name: "Loews", rating: '2', comment: "Employees were not courteous, and smelled funny.", employee_id: employee1.id, user_id: user2.id)
review3 = Review.create(store_name: "Home Depot", rating: '4', comment: "These people seemed to care about their customers", employee_id: employee2.id, user_id: user1.id)
review4 = Review.create(store_name: "Dev Bootcamp", rating: '4', comment: "Had an exceptional class with my well versed instructors, I am greatful for their vast knowledge.", employee_id: employee2.id, user_id: user1.id)
review5 = Review.create(store_name: "Dev Bootcamp", rating: '2', comment: "I noticed they stopped restocking the teddy grams which is a little disturbing.. More on this soon.", employee_id: employee2.id, user_id: user1.id)
review6 = Review.create(store_name: "Barringer", rating: '1', comment: "This sales rep seemed incompetent, I dont think they actually knew anything about the business.", employee_id: employee1.id, user_id: user2.id)
review7 = Review.create(store_name: "Liquor Depot", rating: '5', comment: "Employee was very helpful, he helped me choose the perfect liquor for my mother .", employee_id: employee1.id, user_id: user2.id)
