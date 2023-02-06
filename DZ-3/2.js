function greeting(user) {
    console.log(`Приветствуем вас ${user}!`);
}

const userName = prompt('Введите имя пользователя: ');
greeting(userName);