#Questions for Challenge

###Q: What is Interface Builder's object library?
IB's object library is a collection of reusable User interface objects that
can be used to create user interact-able content.

###Q: What is the difference between an outlet and an action?
An IBOutlet is a link a view controller to a specific User Interface element
in the Interface Builder. IBOutlets allow you to reference those elements
in the IB.

An IBAction is a function that get called whenever a specific action happens to
the UI element in Interface Builder. Actions kick off code the usually performs
other functions.

###Q: What is the role of a View Controller?
The view controller's role is to act as a communicator between interface
builder, i.e., the User interface of the application sometimes called the view,
and the rest of the app, or more specifically, the model, if the paradigm is
MVC.

###Q: What is Model-View-Controller?
MVC is a paradigm, a design pattern, and a philosophy about how one should
write readable, scalable, maintainable, collaborate-able code. It decomposes
an app into three parts: a model; a view; and a controller. The model represents
mostly data and only communicates with the controller, or doesn't communicate at
all. The view is what the user interacts with and it communicates with
the controller, but not the model. Lastly, the controller coordinates the
behavior of the app and ensure that the view and the model get the information
when they need it. There is said to be a "separation of concerns" of each of
the three elements of MVC.

###Q: Why use Model-View-Controller?
MVC is a helpful design pattern when working in teams or dealing with
complicated codebases, which is most of the time for a normal developer.
