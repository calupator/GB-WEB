function celsiusToFahrenheit(deg) {
    return ((9 / 5) * deg + 32).toFixed(1); //(9 / 5) * градусы Цельсия + 32
}

const degrees = Number.parseFloat(prompt('Введите температуру в градусах Цельсия.'));

alert(`Цельсий: ${degrees}, Фаренгейт: ${celsiusToFahrenheit(degrees)}`);