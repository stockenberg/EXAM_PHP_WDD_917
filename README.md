# Prüfungssituation Training
## THEMA Bildergallerie
### Setup
- clone (git clone https://....WDD_918_CMS.git)
- vagrant up
- vagrant ssh
    - install phpmyadmin
    
    // 5-10 min
- Erstelle: pages/edit_gallery.php
- Erstelle: pages/add_gallery.php
- Erstelle: pages/gallery.php
- Whitelist: Füge hinzu: add_gallery => (?p=add_gallery)
- Whitelist: Füge hinzu: edit_gallery => (?p=edit_gallery)
- Whitelist: Füge hinzu: gallery => (?p=gallery)
- Erstelle Gallery.php (Model)
- Erstelle GalleryController.php

    // 6-8 min
- Datenbank Tabelle anlegen
    - id
    - name
    - desc
    - img / url / base64
    - created_at
    - updated_at
    
- Bilder in die Datenbank einspeichern


### Routing
- GET ?p=gallery => liest alle bilder aus
- GET ?p=gallery&action=delete&id=1 => Delete Image by ID
- GET ?p=add_gallery => Formularmaske für Speichern der Bilder
    - POST ?p=add_gallery&action=insert
- GET ?p=edit_gallery&action=edit&id=1 => Formularmaske für Editieren der Bilder
    - POST ?p=edit_gallery&action=update&id=1 => Hintergrund prozess update img in database
    
### View
 // 10-20 min
- Template
    - edit
    - add
    - overview
    - Formular
        - title
        - desc
        - img upload || input.text 
            if img -> enctype="multipart/form-data"
            
### Router
 // 5min
- edit page actions

### Controller // 20-30min
- insert() -> - POST ?p=add_gallery&action=insert
- update() -> - POST ?p=edit_gallery&action=update&id=1 => Hintergrund prozess update img in database
- delete() -> - GET ?p=gallery&action=delete&id=1 => Delete Image by ID
- edit() -> - GET ?p=edit_gallery&action=edit&id=1 => Formularmaske für Editieren der Bilder
- init() -> - GET ?p=gallery => liest alle bilder aus


### Model // 20min
- createImage($post) -> INSERT INTO 
- listAll() -> SELECT * FROM
- editImage($post, $id) -> UPDATE table SET data = newData WHERE identifier
- getImage($id) -> gets a single image SELECT 
- deleteImage($id) -> deletes an image DELETE FROM images WHERE


# CMS Features
- Core
    Login
    Register
    Session Handling
    Customer Feedback
    
- Additional
    - News Page
        - Create
        - Edit
        - Read
        - Delete
            CRUD
    - Users Page (Backend)
        CRUD
        - Roles
    
    - Gallery Page
        - Image Slider
        
    - Versionierung von Inhalten
    - (Page Templates) - Marcel
    
    
- Must Haves
    - Navigation visible with correct role
    - File Upload
    - Date Handling
    - Async CRUD
   
# 30.07.
- Initial CMS Setup
- Database connection
- Login
- Logout
- Session Handling
- Status Handling

# 31.07.
- User Management
    - Read all users
    - Delete users
    - Create users
    - Update users

# News
- Datenbank HAKEN
   - id AI 
   - headline
   - teaser
   - content
   - user_id
   - created_at
   - updated_at
   
- methods
    - getAllNews() 
    - createNews()
    - deleteNews()
    - updateNews()
    
- permissions
    - admin
    - author
    
- pages
    - whitelist
    - name
        - create-news
        - edit-news
        - all-news
    
- wysiwyg plugin
    - summernote.org
    
# Setup
```
> git clone https://github.com/stockenberg/php_wdd0917_cms.git
> cd php_wdd0917_cms
> composer update
> npm install
```