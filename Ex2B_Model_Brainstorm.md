Requirements and Conceptual Model
Group Members
Jada 
Ricardo

End User - Lana is the owner of a small dog-walking business. She needs a database to organize customer information, keep track of dogs, schedule walks, and manage dog walkers.
Business Requirements - The database should allow Lana to:

Store and update customer contact information.

Keep records of each customer's dogs.

Track important dog details, including special care instructions.

Schedule dog-walking appointments.

Assign dog walkers to appointments.

Track the dates, times, and duration of walks.

Record whether appointments are scheduled, completed, or canceled.

Look up which dogs belong to each customer.
Categories of Data - 1. Customers

Customer ID

First name

Last name

Phone number

Email address

Home address

2. Dogs

Dog ID

Dog name

Breed

Age

Customer ID (owner)

Special care instructions

3. Dog Walkers

Walker ID

First name

Last name

Phone number

Email address

4. Walks / Appointments

Walk ID

Dog ID

Walker ID

Walk date

Start time

Duration

Appointment status

Logical Model

1. Database Entities and Attributes

We decided to use four tables for Lana's dog-walking business.

Customers
- customer_id (Primary Key)
- first_name
- last_name
- phone
- email
- home_address

Dogs
- dog_id (Primary Key)
- customer_id (Foreign Key)
- dog_name
- breed
- age
- special_instructions

Walkers
- walker_id (Primary Key)
- first_name
- last_name
- phone
- email

Walks
- walk_id (Primary Key)
- dog_id (Foreign Key)
- walker_id (Foreign Key)
- walk_date
- start_time
- duration_minutes
- status

2. Relationships Between Tables

- Customers → Dogs: One customer can own multiple dogs. Each dog is associated with one customer through customer_id.
- Dogs → Walks: One dog can have multiple walking appointments. Each walk record references one dog through dog_id.
- Walkers → Walks: One walker can complete multiple appointments. Each walk record references one walker through walker_id.

3. Many-to-Many Relationships

Dogs and Walkers have a many to many relationship over time because one walker can walk multiple dogs, and one dog can be walked by different walkers.

The Walks table resolves this relationship by recording each appointment with a dog_id and walker_id.

Our design assumes that each walk record involves one dog and one walker.

4. Design Decisions

We chose four tables to keep the database organized and avoid repeating information unnecessarily.

Primary keys uniquely identify individual records. Foreign keys connect related records between tables.

This structure will allow Lana to manage customers, dogs, walkers, and appointments while keeping the information consistent.
