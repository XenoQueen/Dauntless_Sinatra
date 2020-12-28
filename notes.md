Sinatra Final Project - Dauntless Bounty Board

# Purpose
    - To create a digital bounty board from the video game Dauntless

# Wireframing
    ## Models
        - Slayers
        - Behemoths

# A slayer can:
    - sign up, log in and out
    - create behemoth entry
    - see all entries
    - edit own entries
    - delete own entries

# Slayer
    ## Attributes
        - name
        - username
        - password

# Behemoth
    ## Attributes
        - name
        - user_id
        - element
        - status (alive or dead)

# Associations
    - behemoth belongs_to slayer name
    - slayer has_many behemoth name

# MVP
    - Slayers can sign up, log in, log out, create own entries, edit own entries, delete own entries, view own entries.
    ß
# Stretch  Goals
 - pictures of each behemoth corresponding to their entry
 - sound file of each behemoth's cry corresponding to their entry
 - aesthetics