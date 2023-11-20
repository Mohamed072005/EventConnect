# EventConnect
# EventConnect
# Event Management Database

This project consists of a MySQL database schema designed for managing events, participants, sponsors, organizers, and ticketing.

## Tables

1. **Participants:**
   - `id` (Primary Key)
   - `name` (Participant's name)
   - `cin` (Participant's identification number)
   - `phnumber` (Participant's phone number)

2. **Lieu (Location):**
   - `id` (Primary Key)
   - `city` (City where the event takes place)

3. **Sponsors:**
   - `id` (Primary Key)
   - `name` (Sponsor's name)

4. **Retours (Returns):**
   - `id` (Primary Key)
   - `total` (Total returns)

5. **Evenements (Events):**
   - `id` (Primary Key)
   - `name` (Event name)
   - `dateDebut` (Start date of the event)
   - `dateFin` (End date of the event)
   - `idlieu` (Foreign Key referencing Lieu)
   - `idretour` (Foreign Key referencing Retours)

6. **Sponsored:**
   - `id` (Primary Key)
   - `idsponsore` (Foreign Key referencing Sponsors)
   - `idevent` (Foreign Key referencing Evenements)

7. **Organisateurs (Organizers):**
   - `id` (Primary Key)
   - `name` (Organizer's name)
   - `email` (Organizer's email address)
   - `password` (Organizer's password)

8. **Organiz:**
   - `id` (Primary Key)
   - `idorg` (Foreign Key referencing Organisateurs)
   - `idevent` (Foreign Key referencing Evenements)

9. **Billets (Tickets):**
   - `id` (Primary Key)
   - `prix` (Ticket price)
   - `idparticipant` (Foreign Key referencing Participants)
   - `idevent` (Foreign Key referencing Evenements)
   - `idretour` (Foreign Key referencing Retours)

## Setup

1. **Database Setup:**
   - Create a new MySQL database.
   - Run the SQL scripts provided in `schema.sql` to create the necessary tables.

2. **Configuration:**
   - Update the database connection details in your application or scripts as needed.

## Usage

This database is designed for managing event-related information, including participants, sponsors, organizers, and ticketing. Ensure to handle sensitive information securely.

Feel free to modify the schema or extend it based on your specific requirements.

## Contributors

- [Your Name]

## License

This project is licensed under the [License Name] License - see the [LICENSE.md](LICENSE.md) file for details.
