
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


  this.Given(/^that the machine has enough coffee for a cup$/, function () {
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

  this.Given(/^that the machine has enough milk powder for a cup of Cappuccino$/, function () {
    assert.deepEqual(
      myMachine.checkIfEnoughMilkForCappuccino(), 
      false,
      'Expected a new machine to not have enough milk powder for a cup of Cappuccino');
    myMachine.fillWithMilkPowder(100);
    assert.deepEqual(
      myMachine.checkIfEnoughMilkForCappuccino(),
      true, 
      'Expected to have enough milk powder for a cup of Cappuccino after filling it with 100 grams of milk powder');   
  });
    
  this.Given(/^that the machine has enough milk powder for a cup of Caffe Latte$/, function () {
    assert.deepEqual(
      myMachine.checkIfEnoughMilkForCaffeLatte(), 
      false,
      'Expected a new machine to not have enough milk powder for a cup of Caffe Latte');
    myMachine.fillWithMilkPowder(100);
    assert.deepEqual(
      myMachine.checkIfEnoughMilkForCaffeLatte(),
      true, 
      'Expected to have enough milk powder for a cup of Caffe Latte after filling it with 100 grams of milk powder');  
    
  });


  this.When(/^the user inserts a (\d+) kr coin$/, function (amountOfMoney) {
    amountOfMoney /= 1;
    let moneyBefore = myMachine.insertedMoney;
    myMachine.insertMoney(amountOfMoney);
    assert.deepEqual(
      myMachine.insertedMoney,
      moneyBefore + amountOfMoney,
      "Expected the amount of money inserted to increase with the amount inserted"
    );
  });

    this.When(/^the user inserts a "([^"]*)" kr coin$/, function (nonMoney) {
      global.nonMoney = nonMoney;
      assert.throws(
        function () {
          myMachine.insertMoney(global.nonMoney);
        },
        Error,
        'You must insert money not ' + nonMoney,
        'Expected the runtime error "You must insert money not ' + nonMoney + '"'
      );
     
    


    
  });


}



 

  

  

  
  
