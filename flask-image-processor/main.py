import os
import hashlib
from flask import Flask, request, render_template, redirect, url_for, flash
from flag import FLAG
app = Flask(__name__,static_folder="uploads/")
app.config['UPLOAD_FOLDER'] = 'uploads'
app.config['ALLOWED_EXTENSIONS'] = {'jpg', 'jpeg'}

def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in app.config['ALLOWED_EXTENSIONS']

def create_unique_folder():
    return hashlib.sha256(os.urandom(16)).hexdigest()[:16]

def secret_function():
    print(FLAG)

@app.route('/', methods=['GET', 'POST'])
def upload_file():
    if request.method == 'POST':
        if 'file' not in request.files:
            flash('No file part')
            return redirect(request.url)
        file = request.files['file']
        if file.filename == '':
            flash('No selected file')
            return redirect(request.url)
        if file.content_type != 'image/jpeg' and file.content_type != 'image/png':
            flash('Only JPEG and PNG files are allowed.')
            return redirect(request.url)
        if file and allowed_file(file.filename):
            # 驗證檔案標頭
            file.seek(0)
            if file.read(2) != b'\xff\xd8':
                flash('Invalid JPEG file')
                return redirect(request.url)
            file.seek(0)

            folder_name = create_unique_folder()
            os.makedirs(os.path.join(app.config['UPLOAD_FOLDER'], folder_name))

            # Save the file
            # filename = secure_filename(file.filename)
            filename = file.filename
            file_path = os.path.join(app.config['UPLOAD_FOLDER'], folder_name, filename)
            file.save(file_path)

            # Process the image with ffmpeg
            output_file = os.path.join(app.config['UPLOAD_FOLDER'], folder_name, 'output.jpg')
            print(f'COMMAND: ffmpeg -i "{file_path}" -vf scale=64:64 -pix_fmt yuvj420p -frames:v 1 {output_file}')
            os.popen(f'ffmpeg -vf scale=64:64 -pix_fmt yuvj420p -frames:v 1 {output_file} -i "{file_path}"')

            flash(f'File uploaded and processed successfully!')
            return render_template('upload.html', uploaded_url=f"./uploads/{folder_name}/output.jpg")

    return render_template('upload.html')

if __name__ == '__main__':
    app.run(debug=True)
