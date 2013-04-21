var number;
var counter = 0;

number = prompt('Please enter a number between 2 and 10:', '');

if (number >= 2 && number <= 10) {
    document.write('<h2>Your input number ' + number + '</h2>');


    var result = number

    while (result > 0.000001) {
        result /= 2;
        counter++;
    }
    document.write('<h2>The number of times to divide the number ' + number +
            ' by 2 to get a value less than one millionth is ' + counter + '</h2>');

    var stars = ['*', '**', '***', '****', '*****', '******', '*******', '********', '*********', '**********']

    document.write('<div>');

    for (var i = (number - 1) ; i >= 0; i--) {
        document.write(stars[i] + '<br />');
    }

    document.write('</div>');

}
else if (number < 2 || number > 10) {

    document.write('<h2 class="invalid">Your input is ' + number +
        '. The valid input number is between 2 and 10. <br /> Please reload this page and try again.</h2>');

}

