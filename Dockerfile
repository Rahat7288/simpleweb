# setup the base 
#alpine helps us to install the minimum and compact version of node 
FROM node:alpine

# all the installetion file for the docker will be held inside the app folder

WORKDIR /user/app

#look over the package.json file

COPY package.json ./

# get and install the dependencies 
RUN npm install

#defining the directory
# from the simple-web to container

COPY . .



# telling the image what  to do when run as container

CMD [ "npm", "start" ]