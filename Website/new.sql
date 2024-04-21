CREATE TABLE CUSTOMER (
  CUSTOMER_ID INT(23) PRIMARY KEY AUTO_INCREMENT, 
  CUSTOMER_NAME VARCHAR(255) NOT NULL, 
  CUSTOMER_ADDRESS VARCHAR(255),
  CUSTOMER_EMAIL VARCHAR(255)
  )

CREATE TABLE PRODUCT(
  PRODUCT_ID INT PRIMARY KEY AUTO_INCREMENT,
  PRODUCT_NAME VARCHAR(255) NOT NULL,
  PRODUCT_PRICE VARCHAR(255
  CONSTRAINT CUSTOMER_ID FOREIGN KEY (CUSTOMER_ID) 
    REFERENCES CUSTOMER (CUSTOMER_ID)
)

CREATE TABLE STUDENT(
  STUDENT_ID INT(23) NOT NULL UNIQUE AUTO_INCREMENT, 
  STUDENT_NAME VARCHAR(255),
  STUDENT_EMAIL VARCHAR(255),
  STUDENT_COURSE VARCHAR(255) DEFAULT "BSC.COMPUTING"
  STUDENT_AGE INT CHECK(STUDENT_AGE >= 18)
  COURSE_ID_FK INT,
  CONSTRAINT COURSE_ID FOREIGN KEY (COURSE_ID_FK) 
    REFERENCES COURSE(COURSE_ID)
)

CREATE TABLE COURSE (
  COURSE_ID INT PRIMARY KEY AUTO_INCREMENT,
  COURSE_NAME VARCHAR(255),
  STUDENT_ID_FK INT,
  CONSTRAINT STUDENT_ID FOREIGN KEY (STUDENT_ID_FK) 
    REFERENCES STUDENT(STUDENT_ID)
)

CREATE TABLE STUDENT_COURSE(
  CONSTRAINT STUDENT_ID FOREIGN KEY (STUDENT_ID) 
    REFERENCES STUDENT(STUDENT_ID),
  CONSTRAINT COURSE_ID FOREIGN KEY(COURSE_ID) 
    REFERENCES COURSE (COURSE_ID)
)


--- For creating the composite key, PRODUCT_ID_PK = ORDER_ID, PRODUCT_ID
CREATE TABLE PRODUCT (
    ORDER_ID INT,
    PRODUCT_ID INT,
    PRICE INT,
    BRAND VARCHAR(100),
	CONSTRAINT PRODUCT_ID_PK PRIMARY KEY(ORDER_ID, PRODUCT_ID)
);

--- INSERT Values in this data
INSERT INTO PRODUCT(ORDER_ID, PRODUCT_ID, PRICE, BRAND) 
VALUES
(3, 4, 4000, 'APPLE'),
(5, 8, 2000, 'APPLE'),
(4, 3, 2000, 'APPLE'),
(7, 9, 2000, 'APPLE'),
(9, 4, 2000, 'APPLE')


--Create a juntion, table, it is used to break down tables that have many to many relations

---ENGINE=INNODB; used to make the querying of data from the database faster--->
--- Wwhat is the difference  ,
---Method 1 can l still use the DROP CONSTRAINT column_name? or use the ALTER




<! DOCTYPE <!DOCTYPE html>
  <html>
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title></title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="STU170663_specification_style.css" />
  </head>

  <body>
    <div class="navbar">
      <a class="active" href="#home">Home</a>
      <a href="fitness">Fitness</a>
      <a href="contact">Contact</a>
      <a href="about">About</a>
    </div>

    <section>
      <div>

        <p>One of the things that we beleive in is Fitness, Health and wellness, And for this reasone we have created
          this Health and
          Fitness website to encourage all to be physically active in our daily lives.
          We believe that staying active in all forms for example walking, cycling, going to so and do wegiht, Carido
          and
          all other form of sports are inporatnt for human Health
          “We do not stop exercising because we grow old
          – we grow old because we stop exercising.” – Dr Kenneth Cooper
        </p>
        <p>Regular physical activity can help keep your thinking, learning, and judgment skills sharp as you age.</p>
      </div>
      <p>
        What is this website about who are your intended audience?
        Why do you want to create this website?
        How will your target users benefit from the website?
        What will be the desired features of the website?
      </p>
      <div>
        <p>Our Purpose</p>
        <p>Objective/Goals</p>
        <!-- <p>This defines our purposes for having a webiste where health, fitness and wellness are seen as a vitrial.</p> -->

        <p>To maintain your weight:

          Work your way up to 150 minutes a week of moderate physical activity, which could include dancing or yard
          work.
        </p>
      </div>
      <div>
        <!--Key audience(s) that includes at least two user personas-->
        <b>
          <p>User Persona 1</p>
        </b>
        <div>
          <b>
            <p>Evenleyne Okuwara</p>
          </b>
          <img class="image1" src="images/michael-unsplash.jpg alt=" happy woman" style="width:128px; height:128px;">
          <p>Demograhic: 22 years, lives in Rathus Stegliz. She is married and she is planning to have a child in the 2
            years.</p>
          <p>Occupation: She is Chef at one of the Block House Resturants in Berlin</p>
          <p>Income: 46,000€ p.a</p>
          <b>
            <p>Pain Points:</p>
          </b>
          <p>Even though Evelyne has been working in her dream job,
            she has challenges that she has faced and have made her hate, her physical appearance</p>
          <li>Despression and Anxiety</li>
          <li>Obsesity</li>
          <li>Metabolic Syndrome</li>
          <br>
          <div><b>Goals:</b>
            <li>Improve her Diet</li>
            <li>Exercise programs that will fit her daily life</li>
            <li>Have better mental Health</li>
          </div>
        </div>
        <div>
          <b>
            <p>User Persona 2</p>
          </b>
          <div>
            <b>
              <p>Christian Maddox RoseMary</p>
            </b>
            <img class="image1" src="images/michael-unsplash.jpg alt=" happy woman" style="width:128px; height:128px;">
            <p>About RoseMary:
               She is a 42 years old , married and a mother of 3 children. She has been working for the last 18 years, however she cannot afford a full time nany/house help.She recently got a breakdown and she has considered becomeing physically active inorder to improve her mental Health.
               Since she is a full time employee, a mother and a wife, she finds it hard to go to the gym.
               therefore she needs to be present hfor her kids at home.
              </p>
            <p>Occupation: UI/UX designer full-time, at a US based company and she works full time and remote.</p>
            <p>Income: 58,000€ p.a</p>
            <b>
              <p>challenges:</p>
            </b>
            <li>Despression</li>
            <li>All day Fatigue</li>
            <li>Random mood swings</li>
            <br>
            <div><b>Movitation:</b>
              <li>Be mentally Health</li>
              <li>Find balance between her works, kids, and working on her physical appearance</li>
              <li>Be a good Mother</li>
            </div>
            <div><b>Needs:</b>
              <li>Felxible online  execirsie classes</li>
              <li>Manage calories in take</li>

            </div>
            <div><b>Goals:</b>
              <li>Loose 10kgs of weight</li>
              <li>Drink 3 liters of water evryday</li>
              <li>Workout 4 times a week</li>

            </div>
            <!-- <img src="images/thao-lee-fZOel3hVdHM-unsplash.jpg"> -->
          </div>
        </div>
        <div>
          <b>
            <p>User Persona 3</p>
          </b>
          <div>
            <b>
              <p>Imani The Analyst</p>
            </b>
            <img class="image1" src="images/michael-unsplash.jpg alt=" happy woman" style="width:128px; height:128px;">
            <p>Demographic:
               She is a 24 years old libes in Chile South America 
              </p>
            <p>Occupation: Data Analyst</p>
            <p>Salary: 68,000€ p.a</p>
            <b>
              <p>challenges:</p>
            </b>
            <li>Despression</li>
            <li>All day Fatigue</li>
            <li>Random mood swings</li>
            <br>
            <div><b>Movitation:</b>
              <li>Be mentally Health</li>
              <li>Find balance between her works, kids, and working on her physical appearance</li>
              <li>Be a good Mother</li>
            </div>
            <div><b>Needs:</b>
              <li>Felxible online  execirsie classes</li>
              <li>Manage calories in take</li>

            </div>
            <div><b>Goals:</b>
              <li>Loose 10kgs of weight</li>
              <li>Drink 3 liters of water evryday</li>
              <li>Workout 4 times a week</li>

            </div>
            <!-- <img src="images/thao-lee-fZOel3hVdHM-unsplash.jpg"> -->
          </div>
        </div>
        <div>
          <!--Provisional site structure (to contain at least 5 content pages and a form) -->
          <p>Provisonal site structure</p>
        </div>
        <div>
          <!--Functional specification-->
          <p>Functional specification</p>
        </div>
        <div>
          <!--Competitor analysis-->
          <p>Competitor analysis</p>
          <p>Discuss Competitor websites in terms of their
            design,
            accessiblity,
            usability and features
            <li>
              Design,
            </li>
            <li>
              Accessiblity
            </li>
            <li>
              Usability and features
            </li>
          </p>
        </div>
        <footer class="footer">
          <p>This is the footer</p>
        </footer>

        <script src="" async defer></script>
  </body>
  </section>

  </html>