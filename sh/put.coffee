> @w5/ossput

< (args...)=>
  put = await ossput process.env.BUCKET_SITE
  put ...args
