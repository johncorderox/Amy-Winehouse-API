import React from 'react'
import ReactDOM from 'react-dom'
import Data from '../components/Data'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Data />,
    document.body.appendChild(document.createElement('div')),
  )
})
