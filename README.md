# Solution disclaimer

I started the task with installing rspec gem, because I like the TDD approach. 
I think TDD is a good approach for writing software that has less bugs.

I decided to split the logic for:
- searching for available doctors 
- and the logic for printing the found doctors 
I didn't want, to mix those 2 responsibilities in a single class. 
I decided to have 2 separate classes instead: `DoctorFinder` and `DoctorOutputter`.
I think it is very healthy for the application to have small classes with single responsibility.

`DoctorFinder` class requires an injection of doctors_source as CSV file path. The injection takes place in the constructor.
The usage of the class can be found in the test: `spec/lib/doctor_finder_spec.rb`
To parse the data_source, I used `CSV.foreach` method from CSV library from _Ruby Standard Library_. 
I iterated through the rows of the CSV with `headers: true` option to facilitate navigation over the CSV rows.
I extracted the condition checking for availability of the doctor into the a separate variable, so the code is more unambiguous. 

`DoctorOutputter` class is very simple. I left out the constructor and used only class method in that case, because it didn't need the constructor. 
The class responsibility is just printing out available doctors in the requested format.


The program assumes that the user of the find_doctor method will use only the allowed names of days: 
Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.

I was considering handling the edge cases where:
- someone would try to use the method with invalid day format, like e.g. 'monday', 
- or the CSV file path is invalid CSV or does not exist

but decided to follow YAGNI principle and leave it as it is.


## Setup and test
```
bundle install
rspec
```
