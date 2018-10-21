# Beach House API [![Maintainability](https://api.codeclimate.com/v1/badges/8e5af2ce755671735ef5/maintainability)](https://codeclimate.com/github/johncorderox/Beach-House-API/maintainability)
<i>This API is currently In Progress</i>

## Setup 
+ Clone or Download the repo to your desired path <br>

` git clone https://github.com/johncorderox/Beach-House-API.git `<br>
Now that you have the repo you can run the install script for a basic install<br> 
+ Run in your terminal (Optional) <br>

` bundle install && rails db:seed && rails db:migrate && rails s ` <br>
## API Endpoints 
<table>
  <tr>
    <th>HTTP</th>
    <th>PATH</th>
    <th>Status Code</th>
    <th>Used For</th>
  </tr>
  <tr>
    <td>GET</td>
    <td>api/v1/groups</td> 
    <td>200</td>
    <td>Display All Groups</td>
  </tr>
    <tr>
    <td>GET</td>
    <td>api/v1/albums</td> 
     <td>200</td> 
    <td>Display All Albums</td>
  </tr>
   <tr>
    <td>GET</td>
    <td>api/v1/albums/:id</td> 
     <td>200</td>
    <td>Displays a specific album</td>
  </tr>
   <tr>
    <td>PATCH/PUT</td>
    <td>api/v1/albums/:id</td> 
     <td>200</td>
    <td>Updates a specific album</td>
  </tr>
    <tr>
    <td>DELETE</td>
    <td>api/v1/albums/:id</td>
      <td>200</td>
    <td>Deletes a specific album</td>
  </tr>
     <tr>
    <td>GET</td>
    <td>api/v1/songs</td>
      <td>200</td>
    <td>Gets all songs</td>
  </tr>
   <tr>
    <td>GET</td>
    <td>api/v1/songs/:id</td>
      <td>200</td>
    <td>Gets a specific song</td>
  </tr>
    <td>PATCH/PUT</td>
    <td>api/v1/songs/:id</td>
      <td>200</td>
    <td>Updates a specific song</td>
  </tr>
   </tr>
    <td>DELETE</td>
    <td>api/v1/songs/:id</td>
      <td>200</td>
    <td>Deletes a specific song</td>
  </tr>
 </tr>
  <td>GET</td>
    <td>api/v1/</td>
      <td>401</td>
    <td>Unauthorized </td>
  </tr>
</table>

## Contributing
+ Fork it
+ Create your branch `git checkout -b cool_branch_name_here`
+ Commit and Push `git push origin cool_branch_name_here`
+ Create a new Pull Request 

<br>
<img src="https://preview.ibb.co/gjubi0/P1010437.jpg" alt="beach house"/>
