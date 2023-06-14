const express = require('express');
const app = express();
const articlesfuncs = require('../tradingeconomics/historical.js');
const util = require("util");

app.get('/', async (req, res) => {
  try {
    const reqs = await articlesfuncs.getHistoricalData(country = ['mexico', 'sweden'], indicator = 'gdp');
    const mexico = [];
    const sweden = [];

    for (i=0; i<reqs.length;i++) {
      const obj = (reqs[i]);
      if (obj.Country === "Mexico") {
        let mexObj = {}
        mexObj.year = obj.DateTime.slice(0,4)
        mexObj.value = obj.Value
        mexico.push(mexObj);
      } else if (obj.Country === "Sweden") {
        let swedObj = {}
        swedObj.year = obj.DateTime.slice(0,4)
        swedObj.value = obj.Value
        sweden.push(swedObj);
      }
    }

    res.render("index.ejs", { mexico, sweden });

  } catch(err) {
    console.error(err);
    res.send('An error occurred');
  }
});


app.listen(3000, ()=> {
    console.log("Listening on 3000")
})