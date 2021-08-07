#!/bin/bash
if [ "$NODE_ENV" == "development" ]; then
  
  npm run develop

else

  npm run start

fi