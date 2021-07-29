MODELS
    Users  
        username
        email
        password
        HAVE MANY Games
        HAVE MANY Acheivements THROUGH Games
    Games
        title
        achievements
        BELONG TO Users
        HAVE MANY Achievements
    Achievements
        name
        description
        BELONG TO Games

