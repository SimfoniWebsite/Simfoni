const router = require('express').Router();
const database = require('./test-database');

router.get('/3', (req, res) => {
    
    let entrepreneur = database.users.find(user=>{
        return user.id === 3
    });
    let activeCont = database.containers.filter(cont => {
        return cont.status === 'active'
    });
    console.log(entrepreneur);
    let ent = {
        id: entrepreneur.id,
        name: entrepreneur.name,
        content: activeCont
    };
    console.log(ent);
        res.json(ent);
});

module.exports = router;