console.log('Running...')

function main() {
  console.log('Main Program')

  if (false) {
    // This is all dead code that we want to remove.
    // Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    // Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.A
    // Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi 
    // ut aliquip ex ea commodo consequat.
    // Duis aute irure dolor in reprehenderit in voluptate velit esse cillum 
    // dolore eu fugiat nulla pariatur.
    // Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
    // deserunt mollit anim id est laborum.
  }

  return 0
}

class Human {
    private name: string
    private age: number
    constructor(name: string, age: number) {
        this.name = name        
        this.age = age
    }
    // Method to greet the human
    greet() {
        console.log(`Hello, my name is ${this.name} and I am ${this.age} years old.`)
    }
}

// Create instances of the Human class
const human1 = new Human("Luca", 0)
const human2 = new Human("Ross", 28)

// Call the greet method for each human
human1.greet()
human2.greet()

console.log('Finished...')
