mailing list & connection app

Models
 User
    - has_many :contacts
    - has_many :contacted_pages through :contacts
    - has_many :contacts, through :pages 
    - username 
    - email
    - password_digest


 Page *join table joining contacts & users
    - belongs_to :user
    - has_many :contacts
    - has_many :users, through :contacts
    - name
    - information 
    - picture or video

 Contacts 
    - belongs_to :user
    - belongs_to :pages
    - has_many :users, through :pages
    - information


Views

 Profile  
    - name
    - email
    - number of others on contact list
    - number of mailing list that they are currently on.

 Page
   - form create
      - business name or name
      - video or business card 
      -  social media
      - add to mailing list link 

 Contact 
   - name 
   - number
   - email
      

 Sign in
   - username 
   - password

 Sign out
   - sign out message 


