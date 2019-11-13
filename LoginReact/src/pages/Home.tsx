import { IonContent, IonHeader, IonPage, IonTitle, IonToolbar } from '@ionic/react';
import React from 'react';

const Home: React.FC = () => {
  return (
    <IonPage>
     
      <IonContent >
        <div className="body">
          <div className="container">
            <div className="login">
              <h1>Login</h1>
              <div className="form">
                <h5>Username</h5>
                <input type="text" placeholder="Type your username"/>
                <h5>Password</h5>
                <input type="text" placeholder="Type your password"/>
                <h6>Forgot Password?</h6>
              </div>
              <button>Login</button>
            </div>
            <div className="signUp">
              <h6>Or SignUp Using</h6>
              <button>SIGNUP</button>
            </div>
          </div>
        </div>
      </IonContent>
    </IonPage>
  );
};

export default Home;
