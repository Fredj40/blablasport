// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import CharacterCounter from "stimulus-character-counter"
Stimulus.register("character-counter", CharacterCounter)
