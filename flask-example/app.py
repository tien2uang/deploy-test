# Importing flask module in the project is mandatory
# An object of Flask class is our WSGI application.
from flask import Flask
from flask_cors import CORS

# Flask constructor takes the name of
# current module (__name__) as argument.
app = Flask(__name__)
CORS(app)

# The route() function of the Flask class is a decorator,
# which tells the application which URL should call
# the associated function.


@app.get('/hello')
# ‘/’ URL is bound with hello_world() function.
def hello_world():
    return 'Hello World'


# main driver function
if __name__ == '__main__':
    print("Starting the Flask application at port 8080")
    # run() method of Flask class runs the application
    # on the local development server.
    app.run(host="0.0.0.0", port=8080)
