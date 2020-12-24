Sinatra Final Project - Dauntless Bounty Board

# Purpose
    - To create a digital bounty board from the video game Dauntless

# Wireframing
    ## Models
        - Slayers
        - Behemoths

# A slayer can:
    - log in and out
    - create behemoth entry
    - see all entries
    - edit entries
    - delete entries

# Slayer
    ## Attributes
        - slayer_id
        - name
        - password

# Behemoth
    ## Attributes
        - name
        - element
        - status (alive or dead)

# Associations
    - behemoth belongs_to slayer name
    - slayer has_many behemoth name

# Stretch  Goals
 - pictures of each behemoth corresponding to their entry
 - sound file of each behemoth's cry corresponding to their entry
 - aesthetics