module.exports = {

  getHomePage: (req,res) => {

    let querySQL = 'SELECT * FROM hostages';

    db.query(querySQL,(err, result) => {

      if (err) {

        console.log(err.message);
        return res.status(500).send(`<h1>ERROR: ${err.message} \n
             while performing \n
             ${querySQL}</h1>`);

      }

      // Controller (we've got it here close to the Model)
      res.render('index.ejs', {
        title: 'Hostages',
        hostages: result
      })

    })

  },
  
  getSampleHomePage: (req,res) => {

    res.render('index.ejs',
      {title: 'Yummy',
        hostages: [ 
        {
         id: 1,
         name: 'Kfir ben Shiri (Bibas)',
         image: 'ArielBibs.jpg', 
         days: 550, 
         type_of_person: 'child'
        },
        {
         id: 2,
         name: 'sushi',
         kosher_type: 'parve',
         cuisine_id: 2,
         image: 'sushi.jpeg',
         calories: 250, 
         prepare_time_min: 90, 
         ingredients: 'rice, nuri, avocado',  
         type_of_dish: 'main'
        }
       ]
      })

  },

  getSmallHomePage: (req,res) => {

    res.render('small-index.ejs',
      {title: 'Yummy'})

  }

}