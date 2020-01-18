
let CoffeeMachine = require('../index.js');



let myMachine;

let resultOfStartButton;


module.exports = function () { 

  this.Given(/^that the machine is plugged in$/, function () {

    myMachine = new CoffeeMachine();
    myMachine.plugIn();
    assert.strictEqual(myMachine.pluggedIn,
      true,
      'Expected the property pluggedIn to be true after calling the plugIn() method.');
  });

  this.Given(/^that water is available$/, function () {
    myMachine.connectToWater();
    assert.strictEqual(
      myMachine.connectedToWater,
      true,
      'Expected the property connectedToWater to be true after calling the connectToWater() method.');

  });


  this.Given(/^that the machine has enough  coffee for a cup$/, function () {
    assert.deepEqual(
      myMachine.checkIfEnoughCoffeeForACup(),
      false,
      'Expected a new machine to not have enough coffee');
    myMachine.fillWithCoffee(100);
    assert.deepEqual(
      myMachine.checkIfEnoughCoffeeForACup(),
      true,
      'Expected to have enough coffee for a cup (after filling it with 100 grams of ground coffee'
    );
  });

  this.Given(/^the machine has plastic cups$/, function () {
    assert.deepEqual(
      myMachine.checkIfAnyCupsLeft(),
      false,
      'Expected a new machine to not have enough coffee'
    );
    myMachine.fillWithCups(2);
    assert.deepEqual(
      myMachine.checkIfAnyCupsLeft(),
      true,
      'Expected the machine to have at least one cup after filling with two cups'
    );



  });

  this.When(/^the user presses the "([^"]*)" button$/, function (buttonName) {

    
   
  });

  this.Given(/^the machine has enough sugar for a cup$/, function () {   
    
    assert.deepEqual(
      myMachine.checkIfEnoughSugarForACup(),
      false,
      'Expected a new machine to not have enough sugar');
    myMachine.fillWithSugar(100);
    assert.deepEqual(
      myMachine.checkIfEnoughSugarForACup(),
      true,
      'Expected to have enough sugar for a cup after filling it with 100 grams of sugar'
    );
  });




}



 /* 

  

  

  this.When(/^the user inserts a (\d+) kr coin$/, function (amountOfMoney) {

    // Stupid Cucumber - sends the number
    // as a string to our test function
    // so convert it to a number (by dividing with 1)
    amountOfMoney /= 1;

    let moneyBefore = myMachine.insertedMoney;
    myMachine.insertMoney(amountOfMoney);
    assert.deepEqual(
      myMachine.insertedMoney,
      moneyBefore + amountOfMoney,
      "Expected the amount of money inserted to increase with the amount inserted"
    )
  });

  // Note: Cucumber translates when we try
  // to send something no numeric to a different
  // step than the step above!
  this.When(/^the user inserts a "([^"]*)" kr coin$/, function (nonMoney) {

    // Stupid Cucumber/assert library
    // the function used with assert.throws
    // can not use local variables...
    // So we have to make nonMoney an global
    global.nonMoney = nonMoney

    assert.throws(
      // A function to run in which we expect
      // the program to throw a certain error
      function () {
        myMachine.insertMoney(global.nonMoney);
      },
      // The error type we expect
      Error,
      // The error we expect the program to throw
      'You must insert money not ' + nonMoney,
      // Message in test report
      'Expected the runtime error "You must insert money not ' + nonMoney + '"'
    );
  });

  this.When(/^presses the "([^"]*)" button$/, function (buttonName) {
    // Now this step handles presses on all
    // buttons as long as you write their names
    // inside quotes - is this good not necessarily
    // because now this step will neeed to handle
    // all button presses... (with conditional logic)
    if (buttonName === 'start') {
      // For now just say everything is fine
      // (not a real test)
      resultOfStartButton = myMachine.pressStartButton();
    }
    else {
      assert(false, "The only button on this machine should be the start button")
    }
  });


  this.Then(/^the user recieves (\d+) cup of coffee\.$/, function (cups) {
    cups /= 1;
    // Ok time to test if we really get som coffee...
    // we we should and not if we shouldn't
    if (cups === 1) {
      assert.deepEqual(
        resultOfStartButton,
        "here's your coffee",
        "Didn't get any coffee? You should. We inserted enough."
      );
    }
    else {
      assert.notDeepEqual(
        resultOfStartButton,
        "here's your coffee",
        "Did you get coffee? You shouldn't. We didn't insert enough money!"
      );
    }

  });

}
*/

