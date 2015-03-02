# Fleet Flare
The Flash Message library for Battleship warfare :boom:  
Current working version: 1.0.3
## Note
There is a hard dependency for the msgElem.
## Install
`bower install fleet-flare`
## Usage Instructions
Include the fleet-flare.js or fleet-flare.min.js file in the vender script section in your index.html.  
Example:  
`<script src="bower_components/fleet-flare/dist/fleet_flare.min.js"></script>`

To create messages:  
`FlashMessage.Handler.showWinMessage`  
`FlashMessage.Handler.showLoseMessage`  
`FlashMessage.Handler.showErrorMessage("Message")`  
## How to run the test suite
Clone the project and execute:  
`bower install` and `npm install`

Then navigate to the root directory and execute:  
`testem`
## Contributing
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
