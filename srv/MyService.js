module.exports = (srv) => {

    const {Product} = cds.entities ('my.product')
  
    
    srv.before ('UPDATE', 'Product', async (req) => {
      const product = req.data
      //console.log("The Product data"+product);
        
      if (!product.UNITSINSTOCK || product.UNITSINSTOCK <= 0)  return req.error (400, "UNITSINSTOCK in stock should be greater than zero")
      const tx = cds.transaction(req)
      const affectedRows = await tx.run (
        UPDATE (Product)
         .set   ({ UNITSINSTOCK : {'=': product.UNITSINSTOCK }})
          .where ({ PRODUCTID: {'=': product.PRODUCTID}})
         
      )
      if (affectedRows === 0)  return req.error (409, "No Product available, sorry")
    })

  
  }