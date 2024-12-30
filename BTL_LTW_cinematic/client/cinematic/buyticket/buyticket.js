
document.addEventListener("DOMContentLoaded", function () {
    var seats = document.querySelectorAll('.seat');

    seats.forEach(function(seat) {
        seat.addEventListener('click', function() {
            var seatCode = this.getAttribute('data-seat');
            toggleSeatColor(this, seatCode);
        });
    });

    function toggleSeatColor(seatElement, seatCode) {
        var currentSrc = seatElement.getAttribute('src');
        var yellowSeatSrc = '/client/cinematic/assets/img/svgexport-18.svg';
        var whiteSeatSrc = '/client/cinematic/assets/img/svgexport-17.svg';

        var newSrc = currentSrc === whiteSeatSrc ? yellowSeatSrc : whiteSeatSrc;
        seatElement.setAttribute('src', newSrc);
    }
});

function increment(id) {
    var valueElement = document.getElementById('value' + id);
    var value = parseInt(valueElement.textContent);
    value++;
    valueElement.textContent = value;
    calculateTotal();
}

function decrement(id) {
    var valueElement = document.getElementById('value' + id);
    var value = parseInt(valueElement.textContent);
    if (value > 0) {
        value--;
        valueElement.textContent = value;
        calculateTotal();
    }
}

function calculateTotal() {
    var value1 = parseInt(document.getElementById('value1').textContent);
    var value2 = parseInt(document.getElementById('value2').textContent);
    var total = value1 * 100000 + value2 * 70000;
    document.getElementById('money-total').textContent = total;
}

