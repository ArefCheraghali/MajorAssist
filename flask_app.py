#!/usr/bin/python3.6
print("hello from python 3.6")
from flask import Flask, render_template, request, jsonify, redirect, url_for, Markup
from wtforms import Form
import mysql.connector as mysql
import numpy as np
from tensorflow.keras.models import model_from_json
from sklearn.preprocessing import LabelEncoder
import os
app = Flask(__name__)
Red = ['C','B','C','D','A','A','D','D','B','B','B','A','B','D','C','B','A','C','A','D','B','D','C','C','B','D','D','D','A','C','D','A','A','B','D','D','C','C','C','D','C','D','B','C','C']
Blue = ['A','A','B','A','D','B','C','A','D','C','A','D','C','A','A','A','D','C','C','A','C','B','A','D','D','C','C','A','C','D','A','C','C','A','A','C','D','D','A','C','A','C','C','D','B']
White = ['B','D','D','C','B','C','A','B','A','A','C','B','D','B','B','C','B','D','B','C','A','C','B','B','C','B','A','B','D','B','B','B','B','D','B','B','A','B','D','B','B','B','A','A','D']
Yellow = ['D','C','A','B','C','D','B','C','C','D','D','C','A','C','D','D','C','A','D','B','D','A','D','A','A','A','B','C','B','A','C','D','D','C','C','A','B','A','B','A','D','A','D','B','A']





@app.route("/")
def index():
    return render_template('index.html')

@app.route("/result", methods=['GET', 'POST'])
def result():

    if request.method == 'POST':
        answers = []
        for x in range(1, 46):
            question = 'question-' + str(x) + '-answers'
            answer = request.form[question]
            answers.append(answer)
        #return jsonify(answers)
        field = request.form['field']
        satisfaction = request.form['satisfaction']
        satisfy = int(satisfaction)
        msql = mysql.connect(host='majorassist.mysql.pythonanywhere-services.com',user='majorassist',password='Maje1234',database='majorassist$HartmanTest')
        cursor = msql.cursor()
        cursor.execute(''' INSERT INTO users(field,sat,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25,q26,q27,q28,q29,q30,q31,q32,q33,q34,q35,q36,q37,q38,q39,q40,q41,q42,q43,q44,q45) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)''',(field,satisfy,answers[0],answers[1],answers[2],answers[3],answers[4],answers[5],answers[6],answers[7],answers[8],answers[9],answers[10],answers[11],answers[12],answers[13],answers[14],answers[15],answers[16],answers[17],answers[18],answers[19],answers[20],answers[21],answers[22],answers[23],answers[24],answers[25],answers[26],answers[27],answers[28],answers[29],answers[30],answers[31],answers[32],answers[33],answers[34],answers[35],answers[36],answers[37],answers[38],answers[39],answers[40],answers[41],answers[42],answers[43],answers[44]))
        msql.commit()

        R = len(np.where(np.array(answers)==np.array(Red))[0])
        B = len(np.where(np.array(answers)==np.array(Blue))[0])
        W = len(np.where(np.array(answers)==np.array(White))[0])
        Y = len(np.where(np.array(answers)==np.array(Yellow))[0])
        R_p = R/45 * 100
        B_p = B/45 * 100
        W_p = W/45 * 100
        Y_p = Y/45 * 100
        R_pr = round(R_p, 1)
        B_pr = round(B_p, 1)
        W_pr = round(W_p, 1)
        Y_pr = round(Y_p, 1)

        tip = {'Blue':B_p,'White':W_p,'Red':R_p,'Yello':Y_p}
        sorted_list = list( sorted(tip.items(),
                           key=lambda item: item[1],
                           reverse=True))
        temp = sorted_list[0][0]
        if  temp == 'Red':
            A = 'قرمز'
            Rvis= 'visible'
            Bvis= 'd-none'
            Wvis= 'd-none'
            Yvis= 'd-none'
        elif temp == 'Blue':
            A = 'آبی'
            Rvis= 'd-none'
            Bvis= 'visible'
            Wvis= 'd-none'
            Yvis= 'd-none'
        elif temp == 'White':
            A = 'سفید'
            Rvis= 'd-none'
            Bvis= 'd-none'
            Wvis= 'visible'
            Yvis= 'd-none'
        elif temp == 'Yello':
            A = 'زرد'
            Rvis= 'd-none'
            Bvis= 'd-none'
            Wvis= 'd-none'
            Yvis= 'visible'
        #mysql.close()
        labels = ['Blue','Red','Yellow','White']
        values = []
        values.append(B_pr)
        values.append(R_pr)
        values.append(Y_pr)
        values.append(W_pr)
        colors = [ "#00A4E4", "#FF0000", "#FFDD00", "#FFFFFF" ]
        # load json and create model
        SITE_ROOT = os.path.realpath(os.path.dirname(__file__))
        json_url = os.path.join(SITE_ROOT, 'static', 'model.json')
        json_file = open(json_url)
        loaded_model_json = json_file.read()
        json_file.close()
        loaded_model = model_from_json(loaded_model_json)
        # load weights into new model
        SITE_ROOT = os.path.realpath(os.path.dirname(__file__))
        h5_url = os.path.join(SITE_ROOT, 'static', 'model.h5')
        loaded_model.load_weights(h5_url)
        le = LabelEncoder()
        v = le.fit_transform(answers)
        predict = loaded_model.predict_proba(v.reshape(-1,45))
        labels2 = ['حسابداری', 'ریاضی', 'علوم کامپیوتر', 'مهندسی ایمنی', 'مهندسی برق',
               'مهندسی شیمی', 'مهندسی صنایع', 'مهندسی عمران', 'مهندسی مکانیک',
               'مهندسی نفت', 'مهندسی پزشکی', 'مهندسی کامپیوتر']
        predict = predict[0].tolist()
        predict = [float(i)/max(predict) for i in predict]
        predict = [element * 100 for element in predict]
        maxp = max(predict)
        msql.close()
        return render_template('result.html', A = A, SR = str(R_pr), SB = str(B_pr), SW = str(W_pr), SY = str(Y_pr) ,set=zip(values, labels, colors), max=maxp,  Rvis= Rvis,  Bvis= Bvis,  Wvis= Wvis,  Yvis= Yvis, predict=predict, labels2=labels2)
    else:
        return redirect(url_for('test'))
@app.route("/test")
def test():

    return render_template('test.html')


@app.route("/aboutus")
def aboutus():

    return render_template('aboutus.html')


