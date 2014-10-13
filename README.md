## Data modeling exercise

Think of a data modeling problem you've encountered in your own life.Some ideas:

* planning who is getting presents for who at Christmas
* trying to figure out what recipes you can cook with which ingredients
* a matrix organization chart for your work
* determining the right chemotherapy for a patient based off their * symptoms (very hard)
* organizing your workouts
* planning activities for kids by how much time they take up and age-appropriateness

Feel free to think of a problem that reflects you. All of these examples are hard, and yours should be of the same level of difficulty.

Your problem, when converted to Rails models, must contain:

* a has_many/belongs_to association
* a has_one association or a has_many :through association
* a polymorphic association or a self-referencing association
* validations above and beyond presence
* callbacks if necessary
* custom object methods
* **Bonus:** custom class methods or scopes for queries

Convert your data modeling problem to Rails models within this application. Create each model with a separate migration. The models should test all custom methods and all validations.

You must have seed data. You do not need any controllers or views.