from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def show_xff():
    # Specify the name of the XFF header
    xff_name = "X-Forwarded-For"
    
    # Retrieve the XFF header
    xff = request.headers.get(xff_name)
    
    if xff:
        return f"{xff_name}: {xff}"
    else:
        return f"{xff_name} header not found"

if __name__ == '__main__':
    app.run()
