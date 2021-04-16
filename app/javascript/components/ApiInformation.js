import React from 'react'

export class ApiInformation extends React.Component {

  render() {
    return (
      <div>
      <div className="row api-information text-center alert alert-secondary">
      <div className="col-md-12">
          <h1>Welcome to the Amy Winehouse API Portal ✨</h1><br />
          <p>This API is able to make public API calls to retrieve certain information about the artist. <a href="#">Sign Up</a> for an API
          key and start making requests!
          </p>
      </div>
      </div>
      </div>
  )
}

}
export default ApiInformation;
