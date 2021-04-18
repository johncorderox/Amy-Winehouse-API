import React from "react";

export class Footer extends React.Component {
  render() {
    return (
      <div>
        <footer class="bg-light text-center text-lg-start">
          <div class="container p-4">
            <div class="row">
              <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                <h5 class="text-uppercase">Amy Winehouse API</h5>

                <p>
                  Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iste
                  atque ea quis molestias. Fugiat pariatur maxime quis culpa
                  corporis vitae repudiandae aliquam voluptatem veniam, est
                  atque cumque eum delectus sint!
                </p>
              </div>

              <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase">Links</h5>

                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#!" class="text-dark">
                      Link 1
                    </a>
                  </li>
                  <li>
                    <a href="#!" class="text-dark">
                      Link 2
                    </a>
                  </li>
                  <li>
                    <a href="#!" class="text-dark">
                      Link 3
                    </a>
                  </li>
                  <li>
                    <a href="#!" class="text-dark">
                      Link 4
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>

        </footer>
      </div>
    );
  }
}
export default Footer;
